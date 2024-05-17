CC = gcc
CFLAGS = -Wall -Werror
DEBUG_FLAGS = -g
RELEASE_FLAGS = -O3

SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin
TARGET = CreoIDE

SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
CREO_FILES = $(wildcard $(SRC_DIR)/*.creo)
OBJ_FILES = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_FILES))
CREO_OBJ_FILES = $(patsubst $(SRC_DIR)/%.creo, $(OBJ_DIR)/%.o, $(CREO_FILES))
DEP_FILES = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.d, $(SRC_FILES))

.PHONY: all clean debug release run test

all: release

debug: CFLAGS += $(DEBUG_FLAGS)
debug: $(BIN_DIR)/$(TARGET)

release: CFLAGS += $(RELEASE_FLAGS)
release: $(BIN_DIR)/$(TARGET)

$(BIN_DIR)/$(TARGET): $(OBJ_FILES) $(CREO_OBJ_FILES)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $^ -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -MMD -c $< -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.creo
	@mkdir -p $(OBJ_DIR)
	# Add the command to compile CreoLang files to object files
	# Example: creo-compiler $(CFLAGS) -c $< -o $@
	creo-compiler $(CFLAGS) -c $< -o $@

-include $(DEP_FILES)

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

run: all
	./$(BIN_DIR)/$(TARGET)

test: all
	# Add your test commands here
	# Example: ./$(BIN_DIR)/$(TARGET) --test
	./$(BIN_DIR)/$(TARGET) --test