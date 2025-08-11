#include "Snake.hpp"
#include <tuple>
#include <iostream>
#include "Board.hpp"

Snake::Snake() {
    Part* tail = new Part{3, 3, nullptr};
    Part* body = new Part{4, 3, tail};
    Part* body2 = new Part{5, 3, body};
    Part* body3 = new Part{6, 3, body2};

    head = new Part{7, 3, body3};
}

Part* Snake::getHead() {
    return head;
}

void Snake::grow() {
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

void Snake::move(Dir dir, Board* board) {
    auto [dx, dy] = offSet(dir);

    Part* newHead = new Part{
        head->x + dx,
        head->y + dy,
        head
    };
    head = newHead;

    if (board->isFood(head->x, head->y)) {
        board->generateRandomFood();
    } else {
        removeTail();
    }
    
    Part* current = head;
    if (!current->previousPart) return;

    // Recorremos hasta llegar al penúltimo
    while (current->previousPart->previousPart != nullptr) {
        current = current->previousPart;
    }
}