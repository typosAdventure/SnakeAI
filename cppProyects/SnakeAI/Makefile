CXX = g++
CXXFLAGS = -Wall -std=c++17
DEPENDENCIES = -lncurses

SRC = main.cpp GUI.cpp
# TEST_SRC = tests/testCalculator.cpp Calculator.cpp

all: app

app: $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o app $(DEPENDENCIES)


# test: $(TEST_SRC)
# 	$(CXX) $(CXXFLAGS) $(TEST_SRC) -o test_app

clean:
	rm -f app