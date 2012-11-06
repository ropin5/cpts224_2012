#include "cma.h"
#include <string.h>

#define MSIZE 1024*16
unsigned char mem[MSIZE];

char giraffe[]=" \n\
                         __ <`-,-,_,-, \n\
                         \\_;>   ^  _<---' \n\
                            )  _,-' \n\
                           /  / \n\
__                       ,'  / \n\
)_\\                  _,-'   / \n\
   \\_   _,-_-,_  _,-'      / \n\
     \\_/\\,_ `  `'          \\ \n\
      /\\,_ `               | \n\
      |\\,_` )     ,        < \n\
       \\\\_`/,_,_ _\\,_  _/ _/ \n\
       |\\_/\\,_| `   )=| |=( \n\
      /\\_/  \\_|     \\-| |-/ \n\
      \\ )   < )     < / \\ > \n\
       \\\\    \\\\      \\| |/ \n\
        \\\\_   \\\\_    /| |\\_ \n\
    mik ),_\\   )_\\\\  /_(  )_\\  \n\
";

int main(int argc, char * argv[]) {
	int i;
	char *strings[10];
	class_memory(mem,MSIZE); // give it memory allocator

	for (i = 0; i<10; i++) {
		strings[i] = (char *)class_malloc(sizeof(giraffe)); //allocate from classmem library
		strcpy(strings[i],giraffe);
	}
	for (i = 9; i>=1; i--) 
		class_free(strings[i]);
	printf("Giraffe:\n%s\n",strings[0]);
	class_free(strings[0]);
	class_stats();
}
