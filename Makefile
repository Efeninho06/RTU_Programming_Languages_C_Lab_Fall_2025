CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -O2
SRC_DIR = src
BIN_DIR = bin

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

lab2_1: $(BIN_DIR) $(SRC_DIR)/lab2_1.c
	$(CC) $(CFLAGS) $(SRC_DIR)/lab2_1.c -o $(BIN_DIR)/lab2_1

lab2_2: $(BIN_DIR) $(SRC_DIR)/lab2_2.c
	$(CC) $(CFLAGS) $(SRC_DIR)/lab2_2.c -o $(BIN_DIR)/lab2_2

lab2_3: $(BIN_DIR) $(SRC_DIR)/lab2_3.c
	$(CC) $(CFLAGS) $(SRC_DIR)/lab2_3.c -o $(BIN_DIR)/lab2_3

all: lab2_1 lab2_2 lab2_3

clean:
	rm -rf $(BIN_DIR)
