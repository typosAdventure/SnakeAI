#pragma once

enum class Dir { UP,
                 DOWN,
                 LEFT,
                 RIGHT };

class Board;

struct Part {
    int x;
    int y;
    Part *previousPart;
};

class Snake {
  private:
    bool alive;
    Part *head;
    bool collidesWith(int x, int y);
    void removeTail();
    Dir getDirection();
    bool isLegal(Dir dir1, Dir dir2);

  public:
    Dir movingTo;
    int score;
    Dir externalDir;
    int doLegalMove(Dir dir);
    Snake(/* args */);
    ~Snake();
    bool isAlive();
    Part *getHead();
    void move(Dir dir, Board *board);
    void autoMove(Board *board);
};