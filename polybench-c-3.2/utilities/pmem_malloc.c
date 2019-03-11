#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <assert.h>
#include <sys/mman.h>
#include <string.h>
#include <stdint.h>
#include <unistd.h>

#include "my_malloc.h"

// WAM - 2019-03-05 - use Thaleia's allocation interface to use DAX enabled
// PMEM with the same interface.


const char *pmem_dax_dir = "/mnt/pmem7/comerge"; // this is the name of the DAX directory to use for testing.
//const char *pmem_dax_dir = "/tmp"; // this is the name of the DAX directory to use for testing.
static const size_t pmem_header_size = 4096; // hard code page size.

typedef struct _pmem_dax_header {
    char dax_fname[256];
    size_t mapping_size;
    char unused[4096 - (256 + sizeof(size_t))];
} pmem_dax_header_t;


void my_print_address(void *ptr, size_t size, char name[256]) {
    //Start address
    fprintf(stderr, "%s, %p, %ld\n", name, ptr, size);
}    

/*---------1D layout---------*/
void *my_malloc(size_t size, int slow_node, int place_on_slow, char name[256]) {
    void *res = NULL;

    if ((slow_node != -1) && (place_on_slow != 0)) {
        static unsigned counter = 1;
        char dax_fname[256];
        int fd;
        size_t dax_size = pmem_header_size + size;
        pmem_dax_header_t *dax_header;

        // generate a name for the allocation
        snprintf(dax_fname, sizeof(dax_fname), "%s/pb-%d-%u.dat", pmem_dax_dir, getpid(), counter++);
        fd = open(dax_fname, O_RDWR | O_CREAT, 0660);
        assert(fd >= 0);
        assert(posix_fallocate(fd, 0, dax_size) >= 0);

        res = mmap(NULL, dax_size, PROT_READ|PROT_WRITE, MAP_SHARED| MAP_NORESERVE, fd, 0);
        assert(NULL != res);
        dax_header = (pmem_dax_header_t *)res;
        res = (void *)(dax_header+1);
        strncpy(dax_header->dax_fname, dax_fname, sizeof(dax_header->dax_fname));
        dax_header->mapping_size = dax_size;
        close(fd);
    } else { // No slow memory
        res = malloc(size);
    }
    if (PRINT_ADDRESS == 1) my_print_address(res, size, name);
    return res;
}

void *my_calloc(size_t nmemb, size_t size, int slow_node, int place_on_slow, char name[256]) {

    void *res = NULL;
    if ((slow_node != -1) && (place_on_slow != 0)) {
        res = my_malloc(nmemb * size, slow_node, place_on_slow, name);
        memset(res, 0, nmemb * size);
    } else { // No slow memory
        res = calloc(nmemb, size);
    }        
    if (PRINT_ADDRESS == 1) my_print_address(res, nmemb*size, name);
    return res;

}    

void my_free(void *ptr, size_t size, int slow_node, int place_on_slow, char name[256]) {
    
    if ((slow_node != -1) && (place_on_slow != 0)) {
        char dax_fname[256];
        pmem_dax_header_t *dax_header = (pmem_dax_header_t *)(((uintptr_t)ptr) - pmem_header_size);
        strncpy(dax_fname, dax_header->dax_fname, sizeof(dax_fname));
        munmap(ptr, dax_header->mapping_size);
        (void) unlink(dax_fname);
    } else { // No slow memory
        free(ptr);
    }
    //if (PRINT_ADDRESS == 1) fprintf(stderr, "%s, %p, %u\n", name.c_str(), ptr, size);    
}

/*---------2D layout---------*/
void **my_malloc2D(size_t dim1, size_t type_size1, size_t dim2, size_t type_size2, int slow_node, int place_on_slow, char name[256]) {
    int i = 0;
    void **res = NULL;
    if ((slow_node != -1) && (place_on_slow != 0)) {
        res = my_malloc(dim1 * type_size1, slow_node, place_on_slow, name);
        for (i = 0; i < dim1; i++) {
            res[i] = my_malloc(dim2 * type_size2, slow_node, place_on_slow, name);
        }
    } else { // No slow memory
        res = malloc(dim1*type_size1);
        for (i = 0; i < dim1; i++) {
            res[i] = malloc(dim2*type_size2);
        }
    }
    int size = dim1*dim2*type_size2;
    if (PRINT_ADDRESS == 1) my_print_address(res, size, name);
    return res;
}

void my_free2D(void **ptr, size_t dim1, size_t type_size1, size_t dim2, size_t type_size2, int slow_node, int place_on_slow, char name[256]) {
    int i = 0;
    if ((slow_node != -1) && (place_on_slow != 0)) {
        for (i = 0; i < dim1; i++) {
            my_free(ptr[i], dim2 * type_size2, slow_node, place_on_slow, name);
        }
        my_free(ptr, dim1 * type_size1, slow_node, place_on_slow, name);
    } else { // No slow memory
        for (i = 0; i < dim1; i++) {
            free(ptr[i]);
        }
        free(ptr);
    }
} 
   
/*---------3D layout---------*/
void ***my_malloc3D(size_t dim1, size_t type_size1, size_t dim2, size_t type_size2, size_t dim3, size_t type_size3, int slow_node, int place_on_slow, char name[256]) {
    int i = 0, j = 0;
    void ***res = NULL;
    if ((slow_node != -1) && (place_on_slow != 0)) {
        res = (void ***) my_malloc(dim1 * type_size1, slow_node, place_on_slow, name);
        for (i = 0; i < dim1; i++) {
            res[i] = (void **) my_malloc(dim2*type_size2, slow_node, place_on_slow, name);
            for (j = 0; j < dim2; j++) {
            	res[i][j] = (void *) my_malloc(dim3*type_size3, slow_node, place_on_slow, name);
	        }
        }
    } else { // No slow memory
        res = (void ***) malloc(dim1*type_size1);
        for (i = 0; i < dim1; i++) {
            res[i] = (void **) malloc(dim2*type_size2);
            for (j = 0; j < dim2; j++) {
            	res[i][j] = (void *) malloc(dim3*type_size3);
	        }
        }
    }
    //if (PRINT_ADDRESS == 1) my_print_address(res, dim1*dim2*dim3*type_size1*type_size2*type_size3, name);
    if (PRINT_ADDRESS == 1) my_print_address(res, dim1*type_size1 + dim1*dim2*type_size2 + dim1*dim2*dim3*type_size3, name);
    return res;
}

void my_free3D(void ***ptr, size_t dim1, size_t type_size1, size_t dim2, size_t type_size2, size_t dim3, size_t type_size3, int slow_node, int place_on_slow, char name[256]) {
    int i = 0, j = 0;
    if ((slow_node != -1) && (place_on_slow != 0)) {
        for (i = 0; i < dim1; i++) {
            for (j = 0; j < dim2; j++) {
            	my_free(ptr[i][j], dim3*type_size3, slow_node, place_on_slow, name);
            }
            my_free(ptr[i], dim2*type_size2, slow_node, place_on_slow, name);
	    }
        my_free(ptr, dim1*type_size1, slow_node, place_on_slow, name);
    } else { // No slow memory
        for (i = 0; i < dim1; i++) {
            for (j = 0; j < dim2; j++) {
            	free(ptr[i][j]);
            }
            free(ptr[i]);
	    }
        free(ptr);
    }
} 
