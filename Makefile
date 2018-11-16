CC=gcc -c
LD=gcc
SRC=fact.c legendre.c main.c
OBJ=fact.o legendre.o main.o
SRC1=fact.c legendre.c
OBJ1=fact.o legendre.o

legendre:
	$(CC) $(SRC)
	$(LD) $(OBJ) -o legendre.x -lm
	rm -rf *.o
clean:
	rm -rf *.o legendre.x

