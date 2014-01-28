#include "csapp.h"
#include "cache.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line.
 */
#define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* Magic numbers */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define TRANS_BYTES 128

/*
 * Global Variables
 * Semaphores
 */
sem_t ptr_cache;
sem_t wrt_cache;