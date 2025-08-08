CXX := g++
CXXFLAGS := -std=c++17 -Wall -I./src -MMD -MP
SRC_DIR := src
BUILD_DIR := build
BIN_DIR := bin
TARGET := $(BIN_DIR)/snake

# Librerías de SFML
SFML_LIBS := -lsfml-graphics -lsfml-window -lsfml-system

SRC := $(wildcard $(SRC_DIR)/**/*.cpp) $(wildcard $(SRC_DIR)/*.cpp)
OBJ := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SRC))
DEP := $(OBJ:.o=.d)

$(TARGET): $(OBJ)
	@mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(SFML_LIBS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)

run: $(TARGET)
	./$(TARGET)

-include $(DEP)