#ifndef DATA_H_INCLUDED
#define DATA_H_INCLUDED
#include "config.h"

typedef struct object                           //Each body in the system is to be stored as a structure
{
    char body_name[20];
    double mass, position[3], velocity[3], acceleration[2][3];
} Object;

int plotData(Object body[], int body_num, Config *config);

int printBody(Object body);

int countFile(FILE* input, int *body_num);

int readFile(Object body[], int body_num, FILE* input);

int enterIntertialFrame(Object body[], int body_num);


#endif // DATA_H_INCLUDED
