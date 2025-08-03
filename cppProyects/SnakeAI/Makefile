CXX = g++
CXXFLAGS = -Wall -std=c++17

SRC = main.cpp Calculator.cpp
TEST_SRC = tests/testCalculator.cpp Calculator.cpp

all: app

app: $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o app

test: $(TEST_SRC)
	$(CXX) $(CXXFLAGS) $(TEST_SRC) -o test_app

clean:
	rm -f app test_app