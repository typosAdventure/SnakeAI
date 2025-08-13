#include <array>
#include "Board.hpp"
#include "Snake.hpp"
#include <iostream>
#include <cstdint>

// Constructor: inicializa todo a 0
Board::Board(Snake* snakeParm) : gen(std::random_device{}()),
    distX(0, WIDTH - 1),
    distY(0, HEIGHT - 1) {
    clear();
    board = {};
    snake = snakeParm;
    food = new Food {11, 11};
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

bool Board::isFood(int x, int y) {
    return food->x == x && food->y == y;
}

// const auto& Board::data() const { return board; }
// auto& data() { return board; }

void Board::updateBoard() {
    Part* actualPart = snake->getHead();

    std::cout << "ASD" << std::endl;
    while (actualPart != nullptr) {
        set(actualPart->x, actualPart->y, CellType::SNAKE);
        actualPart = actualPart->previousPart;
    }

    set(food->x, food->y, CellType::FOOD);
    std::cout << "Food (x: " << food->x << ", y:" << food->y << ")" << std::endl;
}

void Board::clearBoard() {
    Part* actualPart = snake->getHead();

    while (actualPart != nullptr) {
        this->set(actualPart->x, actualPart->y, EMPTY);

        actualPart = actualPart->previousPart;
    }
}

bool Board::isSnake(int x, int y) {
    Part* current = snake->getHead();

    while (current != nullptr && !(current->x == x && current->y == y)) {
        std::cout << "DAS" << std::endl;
        current = current->previousPart;
    }
    
    return current != nullptr;
}

bool Board::isEmpty(int x, int y) {
    return !isFood(x, y) &&  !isSnake(x, y);
}

void Board::generateRandomFood() {
    int auxX = distX(gen);
    int auxY = distY(gen);

    while (!isEmpty(auxX, auxY)) {
        auxX = distX(gen);
        auxY = distY(gen);

    }

    food->x = auxX;
    food->y = auxY;
    std::cout << "Food (x: " << food->x << ", y:" << food->y << ")" << std::endl;
}