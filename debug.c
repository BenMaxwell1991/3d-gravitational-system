#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <dirent.h>
#include <errno.h>
#include <string.h>

#include "debug.h"

#define CHECK      checkPtr(__FILE__,__LINE__)


static int *pointer;

int setPtr(int *ptr)
{
    int rc = 0;

    pointer = ptr;
    printf("\nDebug pointer: %p\n", pointer);

    return rc;
}

int checkPtr(char* function, int lineNumber)
{
    int rc = 0;



    if(*pointer != 8)
    {
        printf("%s[%d] Function failed on this line\n", function, lineNumber);
        printf("\n\nEVERYTHING FAILED\n\n %d %p", *pointer, pointer);
    }

    return rc;
}


