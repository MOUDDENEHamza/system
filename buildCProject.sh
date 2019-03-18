#!/bin/sh

: '
Created by MOUDDENE Hamza
This is a CProject builder script in Linux
'

read -p "Enter the name of your project : " projectName

#Architecture of the repository.
mkdir bin include lib src doc
touch README.md Makefile
touch src/main.c src/displayShell.c src/input.c include/displayShell.h include/input.h
touch bin/.keep doc/.keep lib/.keep

#Initialize the Makefile.
echo 'MAKE = make
GCC = gcc
INCLUDE = include/
SRC = $(wildcard src/*.c)
MOVE = mv
EXC = ./bin/main
LIB = lib/
GIT = git
ADD = add .
COMMIT = commit -m
PUSH = push
READ = @read -p
BIN = bin/*

all :
	(MAKE) compile -s
	$(MAKE) run -s

compile :
	$(GCC) -I $(INCLUDE) -c $(SRC)
	$(MOVE) *.o $(LIB)
	$(GCC) -o $(EXC) $(LIB)*.o

run :
	$(EXC)

git :
	$(READ) "Enter the message to set up the commit : " message; \
	$(GIT) $(ADD) && $(GIT) $(COMMIT) "$$message" && $(GIT) $(PUSH);

clean :
	rm $(BIN) $(LIB)*' > Makefile

: '
Initialize the src repository
'

#Initialize the main.c file.
echo '#include <stdio.h>

/*Main function*/
int main(int argc, char *argv[]) {
        
        return 0;
}' > src/main.c

#Initialize the displayShell.c file.
echo '#include <stdio.h>
#include "displayShell.h"

#define RED "\x1B[31m"
#define GREEN "\x1B[32m"
#define BLUE "\x1B[34m"
#define RESET "\x1B[0m"

/*Display the init bar*/
void init_bar(void) {
	printf("\n******************************************************************************\n");
	printf("\n\t\t\t\t"GREEN"$$projectName"RESET"\t\t\t\n");
	printf("\n******************************************************************************\n");
}

/*Display the end bar*/
void end_bar(void) {
        printf("\n\n\t\t\t\t"GREEN"THE END"RESET"\t\t\t\n");
        printf("\n******************************************************************************\n\n");
}' > src/displayShell.c

#Initialize the input.c file.
echo '#include <stdio.h>
#include "input.h"
' > src/input.c

: '
Initialize the include repository
'

#Initialize the displayShell.h file.
echo '#ifndef _DISPLAYSHELL_H_
#define _DISPLAYSHELL_H_

/*Display the init bar*/
void init_bar(void);

/*Display the end bar*/
void end_bar(void);

#endif' > include/displayShell.h

#Initialize the input.h file.
echo '#ifndef _INPUT_H_
#define _INPUT_H_



#endif' > include/displayShell.h
