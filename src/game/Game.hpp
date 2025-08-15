#pragma once
#include "Board.hpp"
#include "Snake.hpp"

class Game {
    private:
        Snake* snake;
        Board* board;
    public:
        // Game(/* args */);
        // ~Game();
        Board* getBoard();
        void autoScroll(bool scroll);
        void playGame();
        void move(Dir dir);
        void playGameBis(bool autoScroll);
        void moveSnake(Dir dir);
};