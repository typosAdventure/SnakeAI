CXX = g++
CXXFLAGS = -Wall -std=c++17
DEPENDENCIES = -lncurses

SRC = main.cpp GUI.cpp
TEST_SRC = tests/SnakeBodyTest.cpp SnakeBody.cpp

all: app test

app: $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o app $(DEPENDENCIES)


test: $(TEST_SRC)
	$(CXX) $(CXXFLAGS) $(TEST_SRC) -o test_app

clean:
	rm -f app test_app