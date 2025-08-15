// #include "game/autoScroller.hpp"
#include "API/APISnake.hpp"

int main() {
    // autoScroll();
    APISnake* apiSnake = new APISnake();
    apiSnake->createNewGame(true, false);

    return 0;
}