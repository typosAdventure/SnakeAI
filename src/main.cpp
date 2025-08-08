#include "gui/GUI.hpp"
#include "game/GameLogic.hpp"
#include <iostream>

int main() {
    GUI* gui = new GUI();
    GameLogic* game = new GameLogic();

    game->playGame();
    gui->render();

    return 0;
}