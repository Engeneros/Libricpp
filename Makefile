PROGA=RC
OBJ=*.o
SRC=*.cpp
CC=g++
KILL=clean

$(PROGA): $(OBJ)
#	clean
	$(CC) -o $@ $(OBJ)
	./$(PROGA)

$(OBJ): $(KILL)  $(SRC)
	$(CC) -c $(SRC)

$(KILL):
	rm -f *.o
	rm -f $(PROGA)


