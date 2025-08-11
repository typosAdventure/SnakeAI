#ifndef SNAKE_HPP
#define SNAKE_HPP

enum class Dir { UP, DOWN, LEFT, RIGHT };

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
        void move(Dir dir);
        void removeTail();
};

#endif