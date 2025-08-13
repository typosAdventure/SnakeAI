#include "Snake.hpp"
#include <tuple>
#include <iostream>
#include "Board.hpp"

Snake::Snake() {
    alive = true;
    movingTo = Dir::RIGHT;

    Part* tail = new Part{3, 3, nullptr};
    Part* body = new Part{4, 3, tail};

    head = new Part{5, 3, body};
}

Part* Snake::getHead() {
    return head;
}

bool Snake::isAlive() {
    return alive;
}

Dir Snake::getDirection() {
    return Dir();
}

std::tuple<int, int> offSet(Dir dir) {
    switch (dir) {
    case Dir::RIGHT:
        return {1, 0};
        break;
    case Dir::LEFT:
        return {-1, 0};
        break;
    case Dir::UP:
        return {0, -1};
        break;
    default: // DOWN
        return {0, 1};
        break;    
    }
}

void Snake::removeTail() {
    Part* current = head;

    if (!current->previousPart) return;

    while (current->previousPart->previousPart != nullptr) {
        current = current->previousPart;
    }
    
    delete current->previousPart;
    current->previousPart = nullptr;
}

bool Snake::collidesWith(int newX, int newY) {
    Part* current = getHead();

    while (current != nullptr && !(current->x == newX && current->y == newY)) {
        current = current->previousPart;
    }

    return current != nullptr;
}

bool Snake::isLegal(Dir dir1, Dir dir2) {
    bool isWidth1 = dir1 == Dir::RIGHT || dir1 == Dir::LEFT;
    bool isWidth2 = dir2 == Dir::RIGHT || dir2 == Dir::LEFT;
    bool isHeight1 = dir1 == Dir::UP || dir1 == Dir::DOWN;
    bool isHeight2 = dir2 == Dir::UP || dir2 == Dir::DOWN;

    return (isWidth1 != isWidth2) && (isHeight1 != isHeight2);
}

int Snake::doLegalMove(Dir dir) {  
    if (isLegal(dir, movingTo)) {
        movingTo = dir;

        return 1;
    }
    
    return 0;
}

void Snake::autoMove(Board* board) {
    move(movingTo, board);
}

void Snake::move(Dir dir, Board* board) {
    auto [dx, dy] = offSet(dir);
    int newX = head->x + dx;
    int newY = head->y + dy;

    if (collidesWith(newX, newY) ||
      newX < 0 || newX >= WIDTH || newY < 0 || newY >= HEIGHT) {
        alive = false;
        return;
    }
    
    Part* newHead = new Part{
        newX,
        newY,
        head
    };

    head = newHead;

    if (board->get(head->x, head->y) == CellType::FOOD) {
        board->generateRandomFood();
    } else {
        removeTail();
    }
    
    Part* current = head;
    if (!current->previousPart) return;

    while (current->previousPart->previousPart != nullptr) {
        current = current->previousPart;
    }
}