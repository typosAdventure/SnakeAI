#pragma once
#include <array>
#include <cstdint>
#include <random>

// Board refactor
struct Food {
    int x;
    int y;
};

class Snake;
constexpr int WIDTH = 10;
constexpr int HEIGHT = 10;
using Cell = uint8_t; // entero sin signo de 1 byte
enum CellType : uint8_t { EMPTY = 0, SNAKE = 1, FOOD = 2 };

class Board {
private:
    std::mt19937 gen;
    std::uniform_int_distribution<> distX;
    std::uniform_int_distribution<> distY;
    std::array<std::array<Cell, WIDTH>, HEIGHT> board;
public:
    Board(); // constructor
    void clear(); // limpia el tablero
    void set(int x, int y, Cell value); // setea una celda
    Cell get(int x, int y) const; // obtiene una celda
    bool checkColision(int x, int y);

    const auto& data() const; // acceso de solo lectura
    auto& data(); // acceso lectura/escritura
    void updateBoard(Snake* snake);
    void clearBoard(Snake* snake);
    bool isFood(int x, int y);
    void generateRandomFood();
};