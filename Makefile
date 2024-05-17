# Makefile for CreoIDE

# Compiler and flags
CC = gcc
CFLAGS = -Wall -Werror
DEBUG_FLAGS = -g
RELEASE_FLAGS = -O3

# Directories
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin
TARGET = CreoIDE

# Source and Object files
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_FILES))
DEP_FILES = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.d, $(SRC_FILES))

# Main commands
.PHONY: all clean debug release run

all: release

debug: CFLAGS += $(DEBUG_FLAGS)
debug: $(BIN_DIR)/$(TARGET)

release: CFLAGS += $(RELEASE_FLAGS)
release: $(BIN_DIR)/$(TARGET)

$(BIN_DIR)/$(TARGET): $(OBJ_FILES)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $^ -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -MMD -c $< -o $@

-include $(DEP_FILES)

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

run: all
	./$(BIN_DIR)/$(TARGET)

# New command to compile CreoLang files
compile-creo:
	creo-compiler $(SRC_DIR)/CreoLang/CreoLang.creo -o $(BIN_DIR)/CreoLang

test: $(BIN_DIR)/$(TARGET)
	./$(BIN_DIR)/$(TARGET) --test

