# Makefile for CreoIDE

# Compiler and flags for C
CC = gcc
CFLAGS = -Wall -Werror
DEBUG_FLAGS = -g
RELEASE_FLAGS = -O3

# CreoLang compiler
CREO_CC = creo-compiler

# Directories
SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin
TARGET = CreoIDE

# Source and Object files for C
C_SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
C_OBJ_FILES = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(C_SRC_FILES))
C_DEP_FILES = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.d, $(C_SRC_FILES))

# CreoLang source files
CREO_SRC_FILES = $(wildcard $(SRC_DIR)/*.creo)
CREO_OBJ_FILES = $(patsubst $(SRC_DIR)/%.creo, $(BIN_DIR)/%, $(CREO_SRC_FILES))

# Main commands
.PHONY: all clean debug release run compile-c compile-creo test setup

all: release

setup:
	@mkdir -p $(OBJ_DIR)
	@mkdir -p $(BIN_DIR)

debug: CFLAGS += $(DEBUG_FLAGS)
debug: compile-c compile-creo

release: CFLAGS += $(RELEASE_FLAGS)
release: compile-c compile-creo

compile-c: $(C_OBJ_FILES)
	$(CC) $(CFLAGS) $^ -o $(BIN_DIR)/$(TARGET)

compile-creo: $(CREO_OBJ_FILES)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | setup
	$(CC) $(CFLAGS) -MMD -c $< -o $@

$(BIN_DIR)/%: $(SRC_DIR)/%.creo | setup
	$(CREO_CC) $< -o $@

-include $(C_DEP_FILES)

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

run: all
	@echo "Running CreoIDE..."
	@./$(BIN_DIR)/$(TARGET) || echo "Run CreoLang output instead"
	@for creo_output in $(CREO_OBJ_FILES); do \
		echo "Running $$creo_output"; \
		./$$creo_output; \
	done

test: $(BIN_DIR)/$(TARGET)
	./$(BIN_DIR)/$(TARGET) --test
