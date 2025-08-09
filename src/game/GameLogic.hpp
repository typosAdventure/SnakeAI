#ifndef GAME_LOGIC
#include "GameBoard.hpp"

class GameLogic {
    private:
        GameBoard* board;
    public:
        GameBoard* GameLogic::getBoard();
        void GameLogic::playGame();
};

#endif