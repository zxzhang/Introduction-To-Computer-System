/******************************************************************************
 *                  Proxy Lab: Writing a Caching Web Proxy                    *
 ******************************************************************************
 *                                                                            *
 *     NAME: Zhengxiong Zhang    USERID: zhengxiz    Version1: 8/7/2013       *
 *                                                                            *
 * Note: This is the first version which I have fixed all the bugs (I think). *
 *       1. Basic Proxy Operation: proxy = server + client                    *
 *          The proxy acts as a server to receive our request, and to give    *
 *          the information we asked. It also acts as a client to communicate *
 *          with the server from which we want the information.               *
 *       2. Concurrent Requests: I use the thread to deal with concurrnent    *
 *          request. This program is to spawn a new thread to process each    *
 *          new incoming request. In this architecture, the main server       *
 *          thread simply accepts connections and spawns off independent      *
 *          worker threads that deal with each request to completion and      *
 *          terminate when they are done.                                     *
 *       3. Caching Web Objects: cache.c & cache.h                            *
 *          I add a cache to proxy that will keep recently used web objects   *
 *          in memory. MAX_CACHE_SIZE = 1MiB, MAX_OBJECT_SIZE = 100KiB.       *
 *                                                                            *
 ******************************************************************************
 */

#include "csapp.h"
#include "proxy.h"

/**************************** 
 * Headers String Constants *
 ****************************
 * Headers are essentially key-value pairs provided line-by-line following
 * the first request line of an HTTP request.The writeup asks that, the
 * following headers should always be sent.
 */
static const char *user_agent = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *acceptheader = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n";
static const char *accept_encoding = "Accept-Encoding: gzip, deflate\r\n";
static const char *connection = "Connection: close\r\n";
static const char *proxy_connection = "Proxy-Connection: close\r\n";

/* Helper Functions */
void *thread(void *vargp);
static inline void parse_uri(char *uri, char *filename, char *host, int *port);
static inline void get_request(rio_t *rio, char *method, char *host, char *filename, char *request);
static inline int my_open_clientfd(char *hostname, int port);
void sigint_handler(int sig);

/*
 * My own wrapper functions
 * The functions in csapp.c always terminate the process when an error occurs.
 * They are not suitable for a proxy.
 */
static inline void my_close(int fd);
static inline ssize_t my_rio_readlineb(rio_t *rp, void *usrbuf, size_t maxlen);
static inline int my_accept(int s, struct sockaddr *addr, socklen_t *addrlen);


/* main function */
int main(int argc, char **argv)
{
    int listenfd, *connfdp, port;
    socklen_t clientlen = sizeof(struct sockaddr_in);
    struct sockaddr_in clientaddr;
    pthread_t tid;

    if (argc != 2) {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(0);
    }
    port = atoi(argv[1]);

/* The SIGPIPE signal should be ignored. */
    Signal(SIGPIPE, SIG_IGN);
    Signal(SIGINT, sigint_handler);

/* Initiate the ptr_cache and wrt_cache semaphore */
    Sem_init(&ptr_cache, 0 ,1);
    Sem_init(&wrt_cache, 0 ,1);

    listenfd = Open_listenfd(port);
    while (1) {
/* To avoid the race condition, use malloc and free */
        connfdp = my_malloc(sizeof(int));
        if (connfdp == NULL)
            continue;
        *connfdp = my_accept(listenfd, (SA *) &clientaddr, &clientlen);
        if (*connfdp < 0) {
            Free(connfdp);
            continue;
        }
/* Use the thread to process the concurrent request */
        int rc;
        if ((rc = pthread_create(&tid, NULL, thread, connfdp)) != 0) {
            fprintf(stderr, "Pthread_create error: %s\n", strerror(rc));
        }
    }
    return 0;
}


/* 
 * Thread function
 * One thread process one request.
 */
void *thread(void *vargp)
{
    Pthread_detach(pthread_self());

/* free the argument */
    int connfd = *((int *)vargp);
    Free(vargp);

    int clientfd;
    char buf[MAXLINE], method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    char filename[MAXLINE], host[MAXLINE];
    char request[MAXLINE];
    int port;
    rio_t rio;

/* read the first line and parse it */
    Rio_readinitb(&rio, connfd);
    if (my_rio_readlineb(&rio, buf, MAXLINE) < 0) {
        my_close(connfd);
        return NULL;
    }
/* 
 * If the line is too small, ignore it.
 * Process the malformed or malicious input.
 */
    if (strlen(buf) < 7) {
        my_close(connfd);
        return NULL;
    }
    sscanf(buf, "%s %s %s", method, uri, version);

/* If it is not a GET, return. Otherwise, parse the uri and get the request */
    if (strcasecmp(method, "GET")) {
        my_close(connfd);
        return NULL;
    }
    parse_uri(uri, filename, host, &port);
    get_request(&rio, method, host, filename, request);

/*****************************DBG******************************/
    dbg_printf("Thread: %u\n", (unsigned int)pthread_self());
    dbg_printf("%s", request);
/**************************************************************/

/* read the cache, find the same request */
    struct cache *ptr = read_cache(request);

/* if there is same request in the cache, just read it and write it to user */
    if (ptr != NULL) {
        rio_writen(connfd, ptr->respons, ptr->csize);
        my_close(connfd);
        return NULL;
    }

/* if it is not in cache, ask it from the server */
/* connect the server and communicate the bytes */
    if ((clientfd = my_open_clientfd(host, port)) < 0) {
        my_close(connfd);
        return NULL;
    }

    char trans_buf[TRANS_BYTES];
    int bytes_len;

    rio_writen(clientfd, request, strlen(request));

    int csize = 0;
    char cachebuf[MAX_OBJECT_SIZE];
    while ((bytes_len = rio_readn(clientfd, trans_buf, TRANS_BYTES)) > 0) {
        if ((csize + bytes_len) <= MAX_OBJECT_SIZE) {
            memcpy(cachebuf + csize, trans_buf, bytes_len);
        }
        csize += bytes_len;

        if (rio_writen(connfd, trans_buf, bytes_len) < 0) {
            csize = MAX_OBJECT_SIZE + 8;
            break;
        }
    }

/*
 * After get it from the server, save it to cache.
 * At the same time, only one thread can write in cache
 */
    if (csize <= MAX_OBJECT_SIZE) {
        P(&wrt_cache);
        if (write_cache(request, cachebuf, csize) < 0) {
            printf("Cache add error!!!\n");
        }
        V(&wrt_cache);
    }
    my_close(clientfd);
    my_close(connfd);
    return NULL;
}


/* This function can parse the URI */
static inline void parse_uri(char *uri, char *filename, char *host, int *port)
{
    char *file_start;
    char *port_start;
    unsigned int host_len;

/* It can handle the malformed or malicious input */
    if (uri != strstr(uri, "http://")) {
        file_start = strstr(uri, "/");
        if (file_start != NULL) {
            strncpy(filename, file_start, MAXLINE);
            host_len = file_start - uri;
            strncpy(host, uri, host_len);
            host[host_len] = '\0';
        }
        else {
            strncpy(filename, "/", 2);
            strncpy(host, uri, MAXLINE);
        }
    }
    else {
        file_start = strstr((uri + 7), "/");
        if (file_start != NULL) {
            strncpy(filename, file_start, MAXLINE);
            host_len = file_start - (uri + 7);
            strncpy(host, (uri + 7), host_len);
            host[host_len] = '\0';
        }
        else {
            strncpy(filename, "/", 2);
            strncpy(host, (uri + 7), MAXLINE);
        }
    }

/* Get the port */
    port_start = strstr(host, ":");
    if (port_start != NULL) {
        char port_str[64];
        strncpy(port_str, (port_start + 1), 64);
        *port = atoi(port_str);
    }
    else {
        *port = 80;
    }
}


/* Get the request */
static inline void get_request(rio_t *rio, char *method, char *host, char *filename, char *request)
{
    char b[MAXLINE];

    sprintf(request, "%s http://%s%s HTTP/1.0\r\n", method, host, filename);
    sprintf(b, "Host: %s\r\n", host);
    strcat(request, b);
    strcat(request, user_agent);
    strcat(request, acceptheader);
    strcat(request, accept_encoding);
    strcat(request, connection);
    strcat(request, proxy_connection);
    strcat(request, "\r\n");

/* This piece of code will interfere the cache performance */
/*
    char buf[MAXLINE];
    do {
        my_rio_readlineb(rio, buf, MAXLINE);
        if (NULL == strstr(buf, "Host:") &&
            NULL == strstr(buf, "User-Agent") &&
            NULL == strstr(buf, "Accept:") &&
            NULL == strstr(buf, "Accept-Encoding:") &&
            NULL == strstr(buf, "Connection:") &&
            NULL == strstr(buf, "Proxy-Connection:")) {
            strcat(request, buf);
        }
    }
    while (strcmp(buf, "\r\n"));
    strcat(request, "");
*/
}

/**********************************
 * Client/server helper functions *
 **********************************
 * Use getaddrinfo to build my own thread-safe open_clientfd function
 *
 * The gethostbyname() man page mentions in the BUGS section:
 * "These functions use static data storage; if the data is needed for future
 * use, it should be copied before any subsequent calls overwrite it."
 *
 */
static inline int my_open_clientfd(char *hostname, int port) 
{
    int clientfd;
    struct addrinfo hints;
    struct addrinfo *result, *rp;
    int s;

    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags = 0;
    hints.ai_protocol = 0;

    if ((s = getaddrinfo(hostname, NULL, &hints, &result)) != 0)
        return -1;

    for (rp = result; rp != NULL; rp = rp->ai_next) {
        clientfd = socket(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
        if (clientfd == -1)
            continue;

       /* set the port */
        *((unsigned short *)((rp->ai_addr)->sa_data)) = htons(port);
        if (connect(clientfd, rp->ai_addr, rp->ai_addrlen) != -1)
            break;

        close(clientfd);
    }
    if (rp == NULL)
        return -1;
    freeaddrinfo(result);
    return clientfd;
}


/* The wrapper functions */
static inline void my_close(int fd) 
{
    int rc;

    if ((rc = close(fd)) < 0)
        fprintf(stderr, "Close error: %s\n", strerror(errno));
}
static inline ssize_t my_rio_readlineb(rio_t *rp, void *usrbuf, size_t maxlen) 
{
    ssize_t rc;

    if ((rc = rio_readlineb(rp, usrbuf, maxlen)) < 0)
        fprintf(stderr, "Rio_readlineb error: %s\n", strerror(errno));
    return rc;
} 
static inline int my_accept(int s, struct sockaddr *addr, socklen_t *addrlen) 
{
    int rc;

    if ((rc = accept(s, addr, addrlen)) < 0)
        fprintf(stderr, "Accept error: %s\n", strerror(errno));
    return rc;
}
void sigint_handler(int sig)
{
    free_all_cache();
    printf("\nExit From the Proxy!!!\n");
    exit(0);
}