#pragma once
#include <array>
#include <cstdint>
#include "Snake.hpp"

constexpr int WIDTH = 20;
constexpr int HEIGHT = 20;
using Cell = uint8_t; // entero sin signo de 1 byte
enum CellType : uint8_t { EMPTY = 0, SNAKE = 1, FOOD = 2 };

class Board {
private:

public:
    std::array<std::array<Cell, WIDTH>, HEIGHT> board;
    Board(); // constructor
    void clear(); // limpia el tablero
    void set(int x, int y, Cell value); // setea una celda
    Cell get(int x, int y) const; // obtiene una celda
    bool checkColision(int x, int y);

    const auto& data() const; // acceso de solo lectura
    auto& data(); // acceso lectura/escritura
    void updateBoard(Snake* snake);
    void clearBoard(Snake* snake);
};