/*
 * cache.c implement the cache in my proxy.
 * NAME: Zhengxiong Zhang    USERID: zhengxiz    Version1: 8/7/2013
 */

#include "cache.h"

/* magic numbers */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* cache variables */
static struct cache *head = NULL;
static struct cache *rear = NULL;
static int cache_size = 0;

/* helper functions */
static inline int add_cache(struct cache *ptr);
static inline void move_to_head(struct cache *ptr);
static inline void addd_node(struct cache *ptr);
static inline void dele_node(struct cache *ptr);
static inline void free_node(struct cache *ptr);
static inline struct cache *search_cache(char * request);
/* dbg function */
void check_cache();

/* read the cache */
struct cache *read_cache(char * request)
{
    struct cache *ptr;
    for (ptr = head; ptr != NULL; ptr = ptr->next) {
        if (!strcmp(request, ptr->request)) {

/*
 * Pointer operation would cause error when a lot of threads process it
 * So, we need semaphore
 */
            P(&ptr_cache);
            move_to_head(ptr);

            dbg1_printf("Find the cache: %p\n", ptr);
            dbg1_check_cache();

            V(&ptr_cache);

            return ptr;
        }
    }
    return NULL;
}

/* move the node to the head */
static inline void move_to_head(struct cache *ptr)
{
    dele_node(ptr);
    addd_node(ptr);
}

/* write the cache */
int write_cache(char *request, char *respons, int csize)
{
    if (search_cache(request))
        return -1;

    struct cache *ptr = my_malloc(sizeof(struct cache));
    ptr->request = my_malloc(strlen(request) + 1);
    ptr->respons = my_malloc(csize);
    ptr->prev = NULL;
    ptr->next = NULL;
    ptr->csize = csize;
    strcpy(ptr->request, request);
    memcpy(ptr->respons, respons, csize);

/* add the new node to the link list */
    if (add_cache(ptr) < 0) {
        printf("Add cache error!!!\n");
    }

    return 0;
}

/* add the node to the list */
static inline int add_cache(struct cache *ptr)
{
    P(&ptr_cache);
/* if other thread has add the node, just return */
    if (search_cache(ptr->request)) {
        free_node(ptr);
        V(&ptr_cache);
        return -1;
    }
    V(&ptr_cache);

    cache_size += ptr->csize;
    while (cache_size > MAX_CACHE_SIZE) {
        struct cache *p = rear;

        P(&ptr_cache);
        dele_node(p);
        V(&ptr_cache);

        cache_size -= p->csize;
        free_node(p);
    }

/* add the node in the link list */
    P(&ptr_cache);
    addd_node(ptr);
    dbg1_printf("Add the cache: %p\n", ptr);
    dbg1_check_cache();
    V(&ptr_cache);

    return 0;
}

/* add the node in the link list */
static inline void addd_node(struct cache *ptr)
{
    if (NULL == head) {
        head = ptr;
        rear = ptr;
    }
    else {
        ptr->prev = NULL;
        ptr->next = head;
        head->prev = ptr;
        head = ptr;
    }
}

/* delete the node from the link list */
static inline void dele_node(struct cache *ptr)
{
    if (NULL == head) {
        printf("Remove node error!!!\n");
        return;
    }

    if ((NULL == ptr->prev) && (NULL == ptr->next)) {
        head = NULL;
        rear = NULL;
    }
    else if (NULL == ptr->prev) {
        ptr->next->prev = NULL;
        head = ptr->next;
    }
    else if (NULL == ptr->next) {
        ptr->prev->next = NULL;
        rear = ptr->prev;
    }
    else {
        ptr->prev->next = ptr->next;
        ptr->next->prev = ptr->prev;
    }

    return;
}

/* free the struct cache */
static inline void free_node(struct cache *ptr)
{
    if (ptr == NULL) {
        return;
    }

    Free(ptr->request);
    Free(ptr->respons);
    Free(ptr);
    return;
}

/* search a node */
static inline struct cache *search_cache(char * request)
{
    struct cache *ptr;
    for (ptr = head; ptr != NULL; ptr = ptr->next) {
        if (!strcmp(request, ptr->request)) {
            return ptr;
        }
    }
    return NULL;
}

/* wrapper function */
void *my_malloc(size_t size) 
{
    void *p;

    if ((p  = malloc(size)) == NULL)
        fprintf(stderr, "Malloc error: %s\n", strerror(errno));
    return p;
}

/* dbg function, check the list */
void check_cache()
{
    if (NULL == head) {
        dbg1_printf("Cache:\nNULL\n");
    }
    else {
        dbg1_printf("Cache: ");
        struct cache *ptr;
        int count = 0;

		ptr = head;
        if (ptr->prev != NULL) {
             dbg1_printf("Head Error!!! PREV is not NULL!  %p\n", head->prev);
        }

        if (ptr->next != NULL) {
            for (; ptr != rear; ptr = ptr->next) {
                if (ptr->next->prev != ptr) {
                    dbg1_printf("PREV Error! %p\n", ptr->next);
                }
            }
        }

        if (ptr->next != NULL) {
            dbg1_printf("REAR Error!!! NEXT is not NULL! %p\n", rear->next);
        }


        for (ptr = head; ptr != NULL; ptr = ptr->next) {
            if (ptr != NULL) {
                dbg1_printf("%p  ", ptr);
                count++;
            }
        }
        dbg1_printf("\nCacheSize: %d    Count: %d\n\n", cache_size, count);

    }
}

void free_all_cache()
{
    struct cache *ptr = head;
    while (ptr != NULL) {
        dele_node(ptr);
        free_node(ptr);
        ptr = head;
    }
}