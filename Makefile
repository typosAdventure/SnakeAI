CXX := g++
INCLUDES := -Iinclude
CXXFLAGS := -std=c++20 -O3 -march=native -ffast-math -fno-math-errno -ffp-contract=fast \
                    -fno-trapping-math -fopenmp -fopenmp-simd -DNDEBUG -fomit-frame-pointer \
                    -flto $(INCLUDES)
# Usa pkg-config si está
# SFML_LIBS := $(shell pkg-config --libs sfml-graphics) # incluye window y system
# Si no tenés pkg-config, usá esto:
SFML_LIBS := -lsfml-graphics -lsfml-window -lsfml-system -fopenmp -flto

SRC := $(shell find src -name '*.cpp')
OBJ := $(patsubst src/%.cpp, build/%.o, $(SRC))
BIN := bin/app

.PHONY: all clean run dirs
all: $(BIN)

$(BIN): $(OBJ) | dirs
	@mkdir -p bin
	$(CXX) $(CXXFLAGS) -o $@ $^ $(SFML_LIBS)

build/%.o: src/%.cpp | dirs
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

dirs:
	@mkdir -p build

run: $(BIN)
	./$(BIN)

clean:
	rm -rf build bin
