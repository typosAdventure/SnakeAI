#include <ncurses.h>
#include <chrono>
#include <thread>
#include "headers/GUI.hpp"

GUI::GUI(/* args */) {
}

GUI::~GUI() {
}

void GUI::render() {
    initscr();            // inicia ncurses
    noecho();             // no eco de teclas
    curs_set(0);          // cursor invisible
    nodelay(stdscr, TRUE);// getch() no bloquea

    int fps = 30;
    int numberFrames = 0;

    while (true) {
        numberFrames++;
        // int ch = getch(); // -1 si no hay tecla
        // lógica del snake + render...

        clear();
        
        // + std::to_string(numberFrames);
        mvprintw(0, 0, "+----------------------+");
        mvprintw(1, 0, "|                      |");
        mvprintw(2, 0, "|                      |");
        mvprintw(3, 0, "|     ?????????A       |");
        mvprintw(4, 0, "|                      |");
        mvprintw(5, 0, "|                      |");
        mvprintw(6, 0, "|                      |");
        mvprintw(7, 0, "|                      |");
        mvprintw(8, 0, "|                      |");
        mvprintw(9, 0, "+----------------------+");
        mvprintw(10, 0, "%d", numberFrames);
        // mvprintw(10, 0, std::to_string(numberFrames));

        refresh();
        std::this_thread::sleep_for(std::chrono::milliseconds(1000 / fps));
    }
}