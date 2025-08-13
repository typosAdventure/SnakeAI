#include "game/autoScroller.hpp"
#include "API/APISnake.hpp"

int main() {
    // autoScroll();
    APISnake* apiSnake = new APISnake();
    apiSnake->createNewGame(1, 1);

    return 0;
}