#include "Snake.hpp"
#include <tuple>
#include <iostream>

void newPart(Part* part) {

}

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
    case Dir::DOWN:
        return {0, 1};
        break;    
    default:
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

void Snake::move(Dir dir) {
    auto [dx, dy] = offSet(dir);

    Part* newHead = new Part{
        head->x + dx,
        head->y + dy,
        head
    };
    head = newHead;

    // if (!isFood()) {
        removeTail();
        //     /* code */
        // }
        
    Part* current = head;
    if (!current->previousPart) return;

    // Recorremos hasta llegar al penúltimo
    while (current->previousPart->previousPart != nullptr) {
        std::cout << "x:" << current->x << ", y:" << current-> y << " | ";

        current = current->previousPart;
    }

    std::cout << "x:" << current->x << ", y:" << current-> y << std::endl;
}