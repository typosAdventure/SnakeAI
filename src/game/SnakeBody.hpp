#ifndef SNAKE_BODY
#define SNAKE_BODY
#include <cstdint>

enum class Direction : uint8_t {
    UP, DOWN, LEFT, RIGHT
};

struct SnakePart {
    uint8_t posX;
    uint8_t posY;
    SnakePart* sigParte;
};

class SnakeBody {  
    private:
        SnakePart part;
        Direction dirHead;
    public:
        SnakeBody(SnakePart head, Direction dir);
        ~SnakeBody();
        void move(Direction dir);
        SnakePart getPart();
};

// SnakeBody::SnakeBody(/* args */){
// }

// SnakeBody::~SnakeBody()
// {
// }

#endif