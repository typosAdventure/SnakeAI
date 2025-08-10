# === Config ===
CXX := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -I./src -MMD -MP -DWITH_SFML
LDFLAGS :=
SFML_LIBS := -lsfml-graphics -lsfml-window -lsfml-system

SRC_DIR := src
BUILD_DIR := build
BIN_DIR := bin
TARGET := $(BIN_DIR)/snake

# Buscar .cpp en src y subcarpetas
SRC := $(shell find $(SRC_DIR) -name "*.cpp")
OBJ := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SRC))
DEP := $(OBJ:.o=.d)

# === Targets ===
.PHONY: all run clean

all: $(TARGET)

$(TARGET): $(OBJ)
	@mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(OBJ) -o $@ $(LDFLAGS) $(SFML_LIBS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)

-include $(DEP)

# === Notas para Windows con MinGW ===
# CXXFLAGS += -IC:/libs/SFML-2.6.1/include
# LDFLAGS  += -LC:/libs/SFML-2.6.1/lib
