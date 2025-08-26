#pragma once
#include "Board.hpp"
#include "Snake.hpp"
#include <SFML/Graphics.hpp>
#include <array>
#include <tuple>

struct GameInfo {
    std::vector<float> board;
    bool snakeAlive;
    Dir movingTo;
    size_t legalMoves;
    size_t steps;
    size_t finalScore;
};

class Game {
  private:
    Snake *snake;
    Board *board;
    size_t legalMoves;
    size_t steps;
    size_t score;
    bool render;
    bool playing = true;

  public:
    Game(bool doesRender);
    ~Game();
    Board *getBoard();
    void playGame();
    void move(Dir dir);
    void step(Dir dir);
    GameInfo getGameInfo();
    bool snakeAlive();
};