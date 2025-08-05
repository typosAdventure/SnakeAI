#include <ncurses.h>
#include <iostream>
#include <chrono>
#include <thread>
#include <string>
#include "GUI.hpp"

int main() {
    GUI* gui = new GUI();

    // initializeGame();
    (*gui).render();

    // O también
    // gui->render();

    return 0;
}