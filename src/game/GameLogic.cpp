#include "GameLogic.hpp"
#include "GameBoard.hpp"

GameLogic::GameLogic(/* args */) {
}

GameLogic::~GameLogic() {

}

GameBoard* GameLogic::getBoard() {
    return board;
}

void GameLogic::playGame() {
    this->getBoard()->setUpBoard();
}