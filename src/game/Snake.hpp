#pragma once

enum class Dir { UP, DOWN, LEFT, RIGHT };

class Board;

struct Part {
    int x;
    int y;
    Part* previousPart;
};

class Snake {
    private:
        Part* head;
    public:
        Snake(/* args */);
        ~Snake();
        Part* getHead();
        void grow();
        Dir getDirection();
        void move(Dir dir, Board* board);
        void removeTail();
};