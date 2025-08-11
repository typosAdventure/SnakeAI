#include <SFML/Graphics.hpp>
#include <chrono>
#include "Snake.hpp"
#include "Board.hpp"
#include "autoScroller.hpp"
// #include <iostream>

// enum CellType : uint8_t { EMPTY = 0, SNAKE = 1, FOOD = 2 };

bool isFood(int x, int y) {
    return false;
}

void drawSnake(sf::RenderWindow& window, const Board& board, int cellSize = 24, sf::Vector2f origin = {0.f, 0.f}) {
    sf::RectangleShape rect;
    rect.setSize(sf::Vector2f((float)cellSize, (float)cellSize));
    rect.setOutlineThickness(1.f); // poné 1.f si querés ver la grilla
    rect.setOutlineColor(sf::Color(50,50,50));

    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            Cell const v = board.get(x, y);
            if (v == EMPTY) continue;// rect.setFillColor(sf::Color(80, 200, 80));

            // Color por tipo de celda
            if (v == SNAKE)      rect.setFillColor(sf::Color(60, 200, 80));  // verde
            else if (v == FOOD) rect.setFillColor(sf::Color(220, 60, 60)); // rojo

            rect.setPosition(origin.x + x * cellSize, origin.y + y * cellSize);
            window.draw(rect);
        }
    }
}

void autoScroll () {
    sf::RenderWindow window(sf::VideoMode(800, 600), "Snake");
    window.setFramerateLimit(60); // tope de FPS (render)

    // --- Estado del juego (ejemplo mínimo) ---
    Dir dir = Dir::RIGHT;                 // dirección actual
    const double STEP_SEC = 0.2;         // 200 ms por paso de lógica (5 pasos/seg)

    // Clock para timestep fijo
    using clock = std::chrono::high_resolution_clock;
    auto last = clock::now();
    double accumulator = 0.0;

    Board* board = new Board();
    Snake* snake = new Snake();
    board->updateBoard(snake);

    while (window.isOpen()) {
        // -------- Input / eventos --------
        sf::Event e;
        while (window.pollEvent(e)) {
            if (e.type == sf::Event::Closed) window.close();
            if (e.type == sf::Event::KeyPressed) {
                if (e.key.code == sf::Keyboard::W) dir = Dir::UP;
                else if (e.key.code == sf::Keyboard::S) dir = Dir::DOWN;
                else if (e.key.code == sf::Keyboard::A) dir = Dir::LEFT;
                else if (e.key.code == sf::Keyboard::D) dir = Dir::RIGHT;
            }
        }

        // -------- Timestep fijo (lógica independiente del render) --------
        auto now = clock::now();
        double frame = std::chrono::duration<double>(now - last).count();
        last = now;
        accumulator += frame;

//----------------------------------------------------
        while (accumulator >= STEP_SEC) {
            // const int x = snake->getHead()->x;
            // const int y = snake->getHead()->y;

            // if (board->checkColision(x, y)) {
            //     window.close();
            // }
            // else {
            //     if (isFood(x, y)) { // global method
            //         snake->grow();
            //     }
            // }
            
            board->clearBoard(snake);
            snake->move(dir);
            board->updateBoard(snake);

            accumulator -= STEP_SEC;
        }
//----------------------------------------------------

    // -------- Render --------
        window.clear();
        drawSnake(window, *board, 24);
        window.display();
    }
}