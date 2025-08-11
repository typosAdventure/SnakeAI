#ifndef SNAKE_HPP
#define SNAKE_HPP

struct Part {
    int x;
    int y;
    Part* previousPart;
};

enum class Dir { Up, Down, Left, Right };

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
};

#endif