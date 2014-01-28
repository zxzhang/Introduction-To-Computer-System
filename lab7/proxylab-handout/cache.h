#include "csapp.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUG1
#ifdef DEBUG1
# define dbg1_printf(...) printf(__VA_ARGS__)
#else
# define dbg1_printf(...)
#endif

#define DEBUG2
#ifdef DEBUG2
# define dbg1_check_cache(...) check_cache(__VA_ARGS__)
#else
# define dbg1_check_cache(...)
#endif

/* the cache stucture */
typedef struct cache{
    char *request;
    char *respons;
    int csize;
    struct cache *prev;
    struct cache *next;
} cache;

/* the functions used in proxy.c */
cache *read_cache(char * request);
int write_cache(char *request, char *respons, int csize);
void free_all_cache();

/* my wrapper function */
void *my_malloc(size_t size);

/* Global variables, declared in proxy */
extern sem_t ptr_cache;
extern sem_t wrt_cache;