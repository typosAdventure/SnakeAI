#include "Snake.hpp"

void newPart(Part* part) {

}

Snake::Snake() {
    Part* tail = new Part{3, 3, nullptr};
    Part* body = new Part{4, 3, tail};

    this->head = new Part{5, 3, body};
}

Part* Snake::getHead() {
    return this->head;
}

void Snake::grow() {
}

Dir Snake::getDirection() {
    return Dir();
}

void Snake::move(Dir dir) {
    
}
