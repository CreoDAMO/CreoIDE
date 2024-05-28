# Variables
CC = gcc
CFLAGS = -Wall -Werror -O3
CREO_COMPILER = ./scripts/creo-compiler.sh

# Directories
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin

# Source Files
C_SRC = $(SRC_DIR)/main.c
CREO_SRC = $(SRC_DIR)/main.creo

# Object Files
C_OBJ = $(OBJ_DIR)/main.o

# Targets
all: $(BIN_DIR)/CreoIDE_C $(BIN_DIR)/CreoIDE_Creo

# Compile C executable
$(BIN_DIR)/CreoIDE_C: $(C_OBJ)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $^ -o $@

# Compile C object file
$(OBJ_DIR)/main.o: $(C_SRC)
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -MMD -c $< -o $@

# Compile Creo executable
$(BIN_DIR)/CreoIDE_Creo: $(CREO_SRC)
	@mkdir -p $(BIN_DIR)
	$(CREO_COMPILER) $< $@

# Clean build files
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

# Run C executable
run_c: $(BIN_DIR)/CreoIDE_C
	./$(BIN_DIR)/CreoIDE_C

# Run Creo executable
run_creo: $(BIN_DIR)/CreoIDE_Creo
	./$(BIN_DIR)/CreoIDE_Creo

# Include dependencies
-include $(OBJ_DIR)/*.d
