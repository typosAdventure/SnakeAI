#include "APISnake.hpp"
#include "../game/Game.hpp"
#include "../gui/GUI.hpp"

int APISnake::createNewGame(bool render, bool autoScroll) {
    Game* game = new Game();
    GUI* gui = new GUI();

    if (autoScroll) {
        game->autoScroll();
    } else {
        game->playGame();
    }

    if(render) {
        gui->render();
    }
}