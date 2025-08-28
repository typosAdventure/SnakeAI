#pragma once
#include <cstdint>
#include <random>
#include <vector>

// Board refactor
inline int WIDTH = 10;
inline int HEIGHT = 10;

struct Food {
    int x;
    int y;
};

class Snake;

using Cell = int;
enum CellType : int { EMPTY = 0,
                      SNAKE = 1,
                      FOOD = 2,
                      HEAD = 3 };

class Board {
  private:
    std::mt19937 gen;
    std::uniform_int_distribution<> distX;
    std::uniform_int_distribution<> distY;
    Snake *snake;
    Food *food;
    // std::vector<std::vector<int>> board(WIDTH, std::vector<int>(HEIGHT, 0));
    std::vector<std::vector<int>> board; // = std::vector<std::vector<int>>(WIDTH, std::vector<int>(HEIGHT, 0));

  public:
    Board(Snake *snakeParm); // constructor
    ~Board();
    void clear();                      // limpia el tablero
    void set(int x, int y, int value); // setea una celda
    int get(int x, int y) const;       // obtiene una celda

    std::vector<std::vector<int>> getBoard();
    void updateBoard();
    void clearBoard();
    bool isSnake(int x, int y);
    bool isFood(int x, int y);
    bool isEmpty(int x, int y);
    void generateRandomFood();
};