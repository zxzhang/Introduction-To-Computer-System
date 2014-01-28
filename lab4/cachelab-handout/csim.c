/*
 *
 * CS:APP Cache Lab: Understanding Cache Memories
 * NAME: Zhengxiong Zhang    USERID: zhengxiz    Version1: 6/24/2013
 * 15-213/15-513, Summer 2013    Assigned: Thuesday, Jun 18, 2013
 *
 */

/*
 ********* Header Files *********
 */
#include "cachelab.h"
#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
/*
 ********* Magic Numbers *********
 */
#define EXIT_SUCCESS 0
#define EXIT_FAILURE 1
#define BUFF_SIZE 80
#define HIT 0x1
#define MISS 0x10
#define EVICTION 0x100
/*
 * This is the Cache simulator struct. 
 * The cache_simulator has S sets. One set has E lines.
 * Each line has 1 valid bit, t tag bits and B = 2^b bytes cache block.
 */
typedef struct {
    int valid;
    int tag;
    int num;
} cache_line;
typedef struct {
    cache_line *lines;
} cache_set;
typedef struct {
    cache_set *sets;
} cache_simulator;
/*
 ********* Function Declarations *********
 */
void printUsage();
void buildCache(cache_simulator *cache, int set_bits, int line_num);
void freeCache(cache_simulator *cache, int set_bits);
void readTrace(cache_simulator *cache, int set_bits,
/******/int line_num, int block_bits, int flag, char *trace_file);
int getTag(int set_bits, int block_bits, int address);
int getSet(int set_bits, int block_bits, int address);
int accessCache(cache_simulator *cache, int set_num, int line_num,
/******/int tag, int set);
void cacheInorder(cache_simulator *cache, int set_num, int line_num, int set);
/*
 ********* The Final Results *********
 * Total number of hits, misses and evictions
 */
int hits_num = 0;
int misses_num = 0;
int evicts_num = 0;
/*
 ********* The Main *********
 * 1. Get the options (getopt function): "hvs:E:b:t:"
 * 2. Build the cache (malloc)
 * 3. Read the trace file and get the results
 * 4. Free the cache (free)
 * 5. Print the summary
 */
int main(int argc, char *argv[])
{
    int flag = 0;
    int set_bits, line_num, block_bits;
    char trace_file[BUFF_SIZE];
    cache_simulator cache;
/* Use the getopt() to get the options, hvs:E:b:t: */
    char c;
    int arg_num = 0;
    while ((c = getopt(argc, argv, "hvs:E:b:t:")) != -1) {
        switch(c) {
        case 'h':
            printUsage();
            exit(EXIT_SUCCESS);
        case 'v':
            flag = 1;
            break;
        case 's':
            arg_num++;
            set_bits = atoi(optarg);
            break;
        case 'E':
            arg_num++;
            line_num = atoi(optarg);
            break;
        case 'b':
            arg_num++;
            block_bits = atoi(optarg);
            break;
        case 't':
            arg_num++;
            strcpy(trace_file, optarg);
            break;
        default:    /* ? */
            printUsage();
            exit(EXIT_FAILURE);
        }
    }
    if (arg_num < 4) {
        printUsage();
        exit(EXIT_FAILURE);
    }
/* Build the cache and get the results */
    buildCache(&cache, set_bits, line_num);
    readTrace(&cache, set_bits, line_num, block_bits, flag, trace_file);
    freeCache(&cache, set_bits);
    printSummary(hits_num, misses_num, evicts_num);
    return 0;
}
/*
 ********* Print the Usage *********
 */
void printUsage()
{
    printf("Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n");
    printf("Options:\n");
    printf("  -h         Print this help message.\n");
    printf("  -v         Optional verbose flag.\n");
    printf("  -s <num>   Number of set index bits.\n");
    printf("  -E <num>   Number of lines per set.\n");
    printf("  -b <num>   Number of block offset bits.\n");
    printf("  -t <file>  Trace file.\n");
    printf("Examples:\n");
    printf("  linux>  ./csim -s 4 -E 1 -b 4 -t traces/yi.trace\n");
    printf("  linux>  ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
}
/*
 ********* Build the Cache *********
 * Use malloc to build the cache simulator.
 * Have some error checking codes.
 */
void buildCache(cache_simulator *cache, int set_bits, int line_num)
{
    int set_num, i, j;
    set_num = (0x10 << set_bits);
    cache -> sets = (cache_set *) malloc(sizeof(cache_set) * set_num);
    if (!(cache -> sets)) {
        printf("Memory Error!\n");
        exit(EXIT_FAILURE);
    }
    for (i = 0; i < set_num; i++) {
        cache -> sets[i].lines = 
        (cache_line *) malloc(sizeof(cache_line) * line_num);
        if (! (cache -> sets[i].lines)) {
            printf("Memory Error!\n");
            exit(EXIT_FAILURE);
        }
        for (j = 0; j < line_num; j++) {
            cache -> sets[i].lines[j].valid = 0;
            cache -> sets[i].lines[j].tag = 0;
            cache -> sets[i].lines[j].num = 0;
        }
    }
}
/*
 ********* Free the Cache *********
 * Free the memory (malloc in buildCache function)
 */
void freeCache(cache_simulator *cache, int set_bits)
{
    int set_num, i;
    set_num = (0x10 << set_bits);
    for (i = 0; i < set_num; i++) {
        free(cache -> sets[i].lines);
        cache -> sets[i].lines = NULL;
    }
    free(cache -> sets);
    cache -> sets = NULL;
}
/*
 ********* Read the Trace File *********
 * 1. Open the Trace File
 * 2. Get the option (L S M) and the address
 * 3. Get the Tag and Set index from the address
 * 4. Access the cache and get the number of hits, misses and evicts
 * 5. -v argument can enable verbose output, displaying the results
 * 6. Close the trace file
 */
void readTrace(cache_simulator *cache, int set_bits, int line_num,
/******/int block_bits, int flag, char *trace_file)
{
    FILE *fp;
    char file_buf[BUFF_SIZE];
    char option;
    int address;
    int tag;
    int set;
    int test;
    int set_num;
    set_num = (0x10 << set_bits);
/* Open the trace file and get the results */
    fp = fopen(trace_file, "r");
    if (!fp) {
        printf("Trace File Error!\n");
        exit(EXIT_FAILURE);
    }
    while (fgets(file_buf, BUFF_SIZE, fp)) {
        if (' ' == file_buf[0]) {
            sscanf(file_buf, " %c %x", &option, &address);
            tag = getTag(set_bits, block_bits, address);
            set = getSet(set_bits, block_bits, address);
            test = accessCache(cache, set_num, line_num, tag, set);
            if (flag) {
                file_buf[strlen(file_buf) - 1] = '\0';
                if (HIT == test) {
                    printf("%s hit", file_buf + 1);
                }
                else if (MISS == test) {
                    printf("%s miss", file_buf + 1);
                }
                else {
                    printf("%s miss eviction", file_buf + 1);
                }
            }
            if ('M' == option) {
                accessCache(cache, set_num, line_num, tag, set);
                if (flag) {
                    printf(" hit");
                }
            }
            if (flag) {
                printf("\n");
            }
        }
    }
    fclose(fp);
}
/*
 ********* Get the Tag *********
 * Get the tag from the address
 */
int getTag(int set_bits, int block_bits, int address)
{
    int mask, result;
    mask = (1 << 31);
    mask = (mask >> (set_bits + block_bits - 1));
    mask = ~mask;
    result = (address >> (set_bits + block_bits));
    return (result & mask);
}
/*
 ********* Get the Set index *********
 * Get the set index from the address
 */
int getSet(int set_bits, int block_bits, int address)
{
    unsigned mask;
    int result;
    mask = (1 << set_bits) - 1;
    result = (address >> block_bits);
    return (result & mask);
}
/*
 ********* Access the Cache Simulator *********
 * Access the Cache Simulator and get the number of hits, misses
 * and evictions
 */
int accessCache(cache_simulator *cache, int set_num, int line_num,
/******/int tag, int set)
{
    int i;
/* 
 * If the valid bit is 1, and tag bits are the same, 
 * then hits_num++, return HIT.
 */
    for (i = 0; i < line_num; i++) {
        if ((1 == cache -> sets[set].lines[i].valid) &&
        (tag == cache -> sets[set].lines[i].tag)) {
            hits_num++;
            cache -> sets[set].lines[i].num = set_num;
            cacheInorder(cache, set_num, line_num, set);
            return HIT;
        }
    }
/*
 * If it is not hit, then miss. misses_num++. If a valid bit is 0, then fill
 * the data in this block. Return MISS.
 */
    misses_num++;
    for (i = 0; i < line_num; i++) {
        if (0 == cache -> sets[set].lines[i].valid) {
            cache -> sets[set].lines[i].valid = 1;
            cache -> sets[set].lines[i].tag = tag;
            cache -> sets[set].lines[i].num = set_num;
            cacheInorder(cache, set_num, line_num, set);
            return MISS;
        }
    }
/*
 * If all the valid bits are 1. Then it need an evict.
 * Set the least recent block.
 */
    evicts_num++;
    cache -> sets[set].lines[0].valid = 1;
    cache -> sets[set].lines[0].tag = tag;
    cache -> sets[set].lines[0].num = set_num;
    cacheInorder(cache, set_num, line_num, set);
    return EVICTION;
}
/*
 ********* Make the Cache Simulator in Order *********
 * Set the least recent block to line 0.
 * Sort all the lines in one set.
 */
void cacheInorder(cache_simulator *cache, int set_num, int line_num, int set)
{
    int i, m, n;
	cache_line temp;
    for (i = 0; i < line_num; i++) {
        cache -> sets[set].lines[i].num--;
    }
    for (i = 0; i < set_num; i++) {
        for (m = 0; m < line_num; m++) {
            for (n = 0; n < (line_num - m - 1); n++) {
                if ((cache -> sets[i].lines[n].num) >
                (cache -> sets[i].lines[n + 1].num)) {
                    temp = cache -> sets[i].lines[n];
                    cache -> sets[i].lines[n] = cache -> sets[i].lines[n + 1];
                    cache -> sets[i].lines[n + 1] = temp;
                }
            }
        }
    }
}
