#include "snake/Board.hpp"
#include "snake/Snake.hpp"
#include <cstdint>
#include <iostream>
#include <vector>

// Constructor: inicializa todo a 0
Board::Board(Snake *snakeParm) : gen(std::random_device{}()),
                                 distX(0, WIDTH - 1),
                                 distY(0, HEIGHT - 1) {
    board = std::vector<std::vector<int>>(WIDTH, std::vector<int>(HEIGHT, 0));
    clear();
    snake = snakeParm;
    food = new Food{11, 11};
    generateRandomFood();
    updateBoard();
}

// Limpia el tablero
void Board::clear() {
    // std::cout << "board[1][1]" << std::endl;
    // std::cout << board[1][1] << std::endl;
    // std::cout << "board[1][1]" << std::endl;

    for (size_t i = 0; i < board.size(); i++) {
        for (size_t j = 0; j < board[i].size(); j++) {
            board[i][j] = 0;
        }
    }
}

std::vector<std::vector<int>> Board::getBoard() {
    return board;
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
    Part *curr = snake->getHead();

    if (curr != nullptr) {
        set(curr->x, curr->y, CellType::HEAD);
        curr = curr->previousPart;
    }

    while (curr != nullptr) {
        // std::cout << "x:" << curr->x << ", y: " << curr->y << std::endl;

        set(curr->x, curr->y, CellType::SNAKE);
        curr = curr->previousPart;
    }

    set(food->x, food->y, CellType::FOOD);
}

void Board::clearBoard() {
    Part *curr = snake->getHead();

    while (curr != nullptr) {
        set(curr->x, curr->y, EMPTY);

        curr = curr->previousPart;
    }
}

bool Board::isSnake(int x, int y) {
    Part *current = snake->getHead();

    while (current != nullptr && !(current->x == x && current->y == y)) {
        current = current->previousPart;
    }

    return current != nullptr;
}

bool Board::isEmpty(int x, int y) {
    return !isFood(x, y) && !isSnake(x, y);
}

void Board::generateRandomFood() {
    std::vector<std::pair<int, int>> emptyCells;
    emptyCells.reserve(WIDTH * HEIGHT);
    int i = 0;

    for (int x = 0; x < WIDTH; x++) {
        for (int y = 0; y < HEIGHT; y++) {
            if (isEmpty(x, y))
                emptyCells.emplace_back(x, y);

            i++;
        }
    }

    std::uniform_int_distribution<size_t> pick(0, emptyCells.size() - 1);
    auto [fx, fy] = emptyCells[pick(gen)];

    food->x = fx;
    food->y = fy;
    std::cout << "Food (x: " << food->x << ", y:" << food->y << ")" << std::endl;
}