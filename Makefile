FC=gcc -c
LD=gcc
SRC=main.c fact.c hermite.c
OBJ=main.o fact.o hermite.o

hermite:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o hermite.x -lm
	rm -rf *.o
clean:
	rm -rf hermite.x
	rm -rf *.o

