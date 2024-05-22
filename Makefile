# Variables
CC = gcc
CFLAGS = -Wall -Werror -O3
CREO_COMPILER = ./scripts/creo-compiler.sh

# Directories
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

# Targets
all: $(BIN_DIR)/CreoIDE_C $(BIN_DIR)/CreoIDE_Creo

$(BIN_DIR)/CreoIDE_C: $(OBJ_DIR)/main.o
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $^ -o $@

$(OBJ_DIR)/main.o: $(SRC_DIR)/main.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -MMD -c $< -o $@

$(BIN_DIR)/CreoIDE_Creo: $(SRC_DIR)/main.creo
	@mkdir -p $(BIN_DIR)
	$(CREO_COMPILER) $< $@

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

run_c: $(BIN_DIR)/CreoIDE_C
	./$(BIN_DIR)/CreoIDE_C

run_creo: $(BIN_DIR)/CreoIDE_Creo
	./$(BIN_DIR)/CreoIDE_Creo
