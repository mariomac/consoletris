CC = gcc
BCSRC = better-console
SRC = src
OUT = bin
OBJECTS = main.o betterconsole.o piece.o

consoletris: $(OBJECTS)
	mkdir -p $(OUT)
	$(CC) -o $(OUT)/consoletris $(OBJECTS)

main.o: $(SRC)/main.c
	$(CC) -c $(SRC)/main.c -I./$(BCSRC)

betterconsole.o: $(BCSRC)/betterconsole.c
	$(CC) -c $(BCSRC)/betterconsole.c
	
piece.o: $(SRC)/piece.c
	$(CC) -c $(SRC)/piece.c -I./$(BCSRC)

clean:
	rm -rf $(OUT)
	rm -rf $(OBJECTS)
