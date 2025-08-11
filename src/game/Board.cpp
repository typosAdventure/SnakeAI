#include <array>
#include "Board.hpp"
#include "Snake.hpp"
#include <iostream>
#include <cstdint>

std::array<std::array<Cell, WIDTH>, HEIGHT> board{};


// Constructor: inicializa todo a 0
Board::Board() : gen(std::random_device{}()),
      distX(0, WIDTH - 1),
      distY(0, HEIGHT - 1) {
    clear();
}

// Limpia el tablero
void Board::clear() {
    for (auto& row : board) {
        row.fill(0);
    }
}

// Setea el valor de una celda
void Board::set(int x, int y, Cell value) {
    if (x >= 0 && x < WIDTH && y >= 0 && y < HEIGHT) {
        board[y][x] = value;
    }
}

// Obtiene el valor de una celda
Cell Board::get(int x, int y) const {
    if (x >= 0 && x < WIDTH && y >= 0 && y < HEIGHT) {
        return board[y][x];
    }

    return 0;
}

bool Board::checkColision(int x, int y) {
    return get(x, y) == CellType::SNAKE;
}

bool Board::isFood(int x, int y) {
    return get(x, y) == CellType::FOOD;
}

const auto& Board::data() const { return board; }
auto& data() { return board; }

void Board::updateBoard(Snake* snake) {
    Part* actualPart = snake->getHead();

    while (actualPart != nullptr) {
        set(actualPart->x, actualPart->y, CellType::SNAKE);

        actualPart = actualPart->previousPart;
    }
}

void Board::clearBoard(Snake* snake) {
    Part* actualPart = snake->getHead();

    while (actualPart != nullptr) {
        this->set(actualPart->x, actualPart->y, EMPTY);

        actualPart = actualPart->previousPart;
    }
}

void Board::generateRandomFood() {
    int x = distX(gen);
    int y = distY(gen);

    while (get(x, y) == SNAKE) {
        x = distX(gen);
        y = distY(gen);
    }
    
    set(x, y, FOOD);
    std::cout << "Food (x: " << x << ", y:" << y << ")" << std::endl;
}