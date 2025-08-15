#include "APISnake.hpp"
#include "../game/Game.hpp"
#include "../gui/GUI.hpp"


int APISnake::createNewGame(bool render, bool autoScroll) {
    GUI* gui = new GUI();

    game->playGameBis(autoScroll);

    // if(render) {
    //     gui->render(game->getBoard());
    // }
}

void APISnake::moveSnake(Dir dir) {
    game->moveSnake(dir);
}