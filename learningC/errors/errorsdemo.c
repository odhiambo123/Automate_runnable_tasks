#include <stdio.h>
#include <errno.h>
#include <stdlib.h>

int main(void)
{
/* perror */
/* errno */
/* malloc, free, exit */
    /* Pointer to char, requesting dynamic allocation of 2,000,000,000
     * storage elements (declared as an integer constant of type
     * unsigned long int). (If your system has less than 2 GB of memory
     * available, then this call to malloc will fail.)
*/
    char *ptr = malloc(2000000000UL);
if (ptr == NULL) {
    perror("malloc failed");
/* here you might want to exit the program or compensate
           for that you don't have 2GB available
         */
    
} else {
/* The rest of the code hereafter can assume that 2,000,000,000
         * chars were successfully allocated...
*/
free(ptr);
    
}
exit(EXIT_SUCCESS); /* exiting program */
    
}
