#include <array>
#include "Board.hpp"
#include "Snake.hpp"
#include <iostream>
#include <cstdint>

// Constructor: inicializa todo a 0
Board::Board(Snake* snakeParm) : gen(std::random_device{}()),
    distX(0, WIDTH - 1),
    distY(0, HEIGHT - 1) {
    board = {};
    clear();
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

    while (actualPart != nullptr) {
        set(actualPart->x, actualPart->y, CellType::SNAKE);
        actualPart = actualPart->previousPart;
    }

    set(food->x, food->y, CellType::FOOD);
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
        current = current->previousPart;
    }
    
    return current != nullptr;
}

bool Board::isEmpty(int x, int y) {
    return !isFood(x, y) &&  !isSnake(x, y);
}

void Board::generateRandomFood() {
    std::vector<std::pair<int,int>> emptyCells;
    emptyCells.reserve(WIDTH * HEIGHT);

    for (int x = 0; x < WIDTH; x++) {
        for (int y = 0; y < HEIGHT; y++) {
            if (isEmpty(x, y)) emptyCells.emplace_back(x, y);
        }
    }
    
    std::uniform_int_distribution<size_t> pick(0, emptyCells.size() - 1);
    auto [fx, fy] = emptyCells[pick(gen)];

    food->x = fx;
    food->y = fy;
    std::cout << "Food (x: " << food->x << ", y:" << food->y << std::endl;
}