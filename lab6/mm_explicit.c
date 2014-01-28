/*
 * mm.c
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
//#define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

//#define DEBUG1
#ifdef DEBUG1
# define dbg_mm_checkheap(...) mm_checkheap(__VA_ARGS__)
#else
# define dbg_mm_checkheap(...)
#endif


/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

/* Basic constants and macros */
#define WSIZE       4         /* Word and header/footer size (bytes) */
#define DSIZE       8         /* Double word size (bytes) */
#define CHUNKSIZE  (1 << 9)   /* Extend heap by this amount (bytes) */

#define MAX(x, y) ((x) > (y) ? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)         (*(unsigned int *)(p))
#define PUT(p, val)    (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)    (GET(p) & ~0x7)
#define GET_ALLOC(p)   (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

/* Check the ptr p, aligned or not */
#define SIZE_T_SIZE    (ALIGN(sizeof(size_t)))
#define SIZE_PTR(p)    ((size_t*)(((char*)(p)) - SIZE_T_SIZE))

/*  */
#define PRED_FREE(bp)  (*(char **)(bp))
#define SUCC_FREE(bp)  (*(char **)(bp + DSIZE))

static char *root_ptr;
static char *heap_listp;
static void *extend_heap(size_t bytes);
static void *coalesce(void *bp);
static void *find_fit(size_t asize);
static void *place(void *bp, size_t asize);
static int in_heap(const void *p);
static int aligned(const void *p);
static void makecheck(void *bp);
static void printheap(void *bp);
static void killfree(void *bp);

/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) {
    /* Create the initial empty heap */
    if ((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1)
        return -1;
    PUT(heap_listp, 0);                             /* Alignment padding */
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1));  /* Prologue header */
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1));  /* Prologue footer */
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));      /* Epilogue header */
    heap_listp += (2 * WSIZE);

    root_ptr = NULL;
    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE) == NULL)
        return -1;
    return 0;
}

static void *extend_heap(size_t bytes)
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = ALIGN(bytes);
    if (-1 == (long)(bp = mem_sbrk(size)))
        return NULL;

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0));          /* Free block header */
    PUT(FTRP(bp), PACK(size, 0));          /* Free block footer */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));  /* New epilogue header */

    PRED_FREE(bp) = NULL;
    SUCC_FREE(bp) = root_ptr;
    root_ptr = bp;
    if (SUCC_FREE(bp)) {
        PRED_FREE(SUCC_FREE(bp)) = bp;
    }

    /* Coalesce if the previous block was free */
    //dbg_mm_checkheap(1);
    return coalesce(bp);
}

static void *coalesce(void *bp)
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc) {
        return bp;
    }

    else if (prev_alloc && !next_alloc) {
        killfree(NEXT_BLKP(bp));

        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }

    else if (!prev_alloc && next_alloc) {
        killfree(bp);

        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }

    else {
        killfree(bp);
        killfree(NEXT_BLKP(bp));

        size += GET_SIZE(HDRP(PREV_BLKP(bp))) +
                GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    //dbg_mm_checkheap(1);
    return bp;
}

static void killfree(void *bp)
{
    char *pred = PRED_FREE(bp);
    char *succ = SUCC_FREE(bp);
    if ((NULL == pred) && (NULL == succ)) {
        root_ptr = NULL;
    }
    else if (NULL == pred) {
        root_ptr = succ;
        PRED_FREE(succ) = NULL;
    }
    else if (NULL == succ) {
        SUCC_FREE(pred) = NULL;
    }
    else {
        SUCC_FREE(pred) = succ;
        PRED_FREE(succ) = pred;
    }
    //dbg_mm_checkheap(1);
}

/*
 * malloc
 */
void *malloc (size_t size)
{
    size_t asize;       /* Adjusted block size */
    size_t extendsize;  /* Amount to extend heap if no fit */
    char *bp;

    //dbg_mm_checkheap(1);
    /* Ignore spurious requests */
    if (0 == size)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= (2 * DSIZE))
        asize = 3 * DSIZE;
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);

    //dbg_mm_checkheap(1);
    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {
        bp = place(bp, asize);
        //dbg_mm_checkheap(1);
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extendsize)) == NULL)
        return NULL;
    bp = place(bp, asize);
    //dbg_mm_checkheap(1);
    return bp;
}

static void *find_fit(size_t asize)
{
    void *bp;

    for (bp = root_ptr; bp; bp = SUCC_FREE(bp)) {
        if (asize <= GET_SIZE(HDRP(bp))) {
            return bp;
        }
    }
    return NULL;
}

static void *place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));
    //dbg_mm_checkheap(1);
    if ((csize - asize) >= (3 * DSIZE)) {
        PUT(HDRP(bp), PACK(csize - asize, 0));
        PUT(FTRP(bp), PACK(csize - asize, 0));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        //dbg_mm_checkheap(1);
    }
    else {
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
        killfree(bp);
        //dbg_mm_checkheap(1);
    }
    //dbg_mm_checkheap(1);
    return bp;
}

/*
 * free
 */
void free (void *ptr) {
    if (NULL == ptr)
        return;

    size_t size = GET_SIZE(HDRP(ptr));
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));

    SUCC_FREE(ptr) = root_ptr;
    PRED_FREE(ptr) = NULL;
    root_ptr = ptr;
    if (SUCC_FREE(ptr)) {
        PRED_FREE(SUCC_FREE(ptr)) = ptr;
    }

    //dbg_mm_checkheap(1);
    coalesce(ptr);
    //dbg_mm_checkheap(1);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *oldptr, size_t size) {
    size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if(size == 0) {
        free(oldptr);
        return 0;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if(oldptr == NULL) {
        return malloc(size);
    }

    newptr = malloc(size);

    /* If realloc() fails the original block is left untouched  */
    if(!newptr) {
        return 0;
    }

    /* Copy the old data. */
    oldsize = *SIZE_PTR(oldptr);
    if(size < oldsize) oldsize = size;
    memcpy(newptr, oldptr, oldsize);

    /* Free the old block. */
    free(oldptr);

    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
    size_t bytes = nmemb * size;
    void *newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);

    return newptr;
}

/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 */
void mm_checkheap(int verbose) {
    char *bp = heap_listp;

    if (verbose) {
        dbg_printf("Prologue: %p\n", bp);
        if (DSIZE != GET_SIZE(HDRP(bp)))
            printf("ERROR: Prologue header size error!\n");
        if (1 != GET_ALLOC(HDRP(bp)))
            printf("ERROR: Prologue header alloc error!\n");
        if (DSIZE != GET_SIZE(FTRP(bp)))
            printf("ERROR: Prologue footer size error!\n");
        if (1 != GET_ALLOC(FTRP(bp)))
            printf("ERROR: Prologue footer alloc error!\n");
    }

    for (bp = NEXT_BLKP(bp); GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (verbose) {
            printheap(bp);
            makecheck(bp);
        }
    }

    if (verbose) {
        dbg_printf("Epilogue: %p\n", bp);
        if (0 != GET_SIZE(HDRP(bp)))
            printf("ERROR: Epilogue size error!\n");
        if (1 != GET_ALLOC(HDRP(bp)))
            printf("ERROR: Epilogue alloc error! ALLOC: %d\n", GET_ALLOC(HDRP(bp)));
    }

    char *b = root_ptr;
    int count = 0;
    if (verbose) {
        for (b = root_ptr; b != NULL; b = SUCC_FREE(b)) {
            count++;
            dbg_printf("%p  ", b);
        }
        dbg_printf("\ncount: %d\n", count);
    }
}

static void makecheck(void *bp)
{
    if (!aligned(bp))
        printf("ERROR: %p  Aligned error!\n", bp);
    if (!in_heap(bp))
        printf("ERROR: %p  Not in the heap!\n", bp);
    if (GET(HDRP(bp)) != GET(FTRP(bp)))
        printf("ERROR: %p  Header != Footer!\n", bp);
}

static void printheap(void *bp)
{
    bp = bp;
    dbg_printf("%p: Header(%d/%d) Footer(%d/%d) Free(%p/%p)\n", bp,
               GET_SIZE(HDRP(bp)), GET_ALLOC(HDRP(bp)),
               GET_SIZE(FTRP(bp)), GET_ALLOC(FTRP(bp)),
               PRED_FREE(bp), SUCC_FREE(bp));
}