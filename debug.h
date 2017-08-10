#ifndef DEBUG_H_INCLUDED
#define DEBUG_H_INCLUDED

#define CHECK      checkPtr(__FILE__,__LINE__)

int setPtr(int *ptr);

int checkPtr(char* function, int lineNumber);


#endif // DEBUG_H_INCLUDED
