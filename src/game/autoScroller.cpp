#include <SFML/Graphics.hpp>
#include "autoScroller.hpp"
#include <chrono>
#include "Board.hpp"
#include "Snake.hpp"
// #include "Snake.hpp"
// #include <iostream>

// enum CellType : uint8_t { EMPTY = 0, SNAKE = 1, FOOD = 2 };

void drawSnake(sf::RenderWindow& window, const Board& board, int cellSize = 24, sf::Vector2f origin = {0.f, 0.f}) {
    sf::RectangleShape rect;
    rect.setSize(sf::Vector2f((float)cellSize, (float)cellSize));
    rect.setOutlineThickness(1.f); // poné 1.f si querés ver la grilla
    rect.setOutlineColor(sf::Color(50,50,50));

    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            Cell const v = board.get(x, y);
            if (v == EMPTY) rect.setFillColor(sf::Color(25, 25, 25));

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
    Dir dir = Dir::RIGHT;             // dirección actual
    const double STEP_SEC = 0.5;      // 200 ms por paso de lógica (5 pasos/seg)

    // Clock para timestep fijo
    using clock = std::chrono::high_resolution_clock;
    auto last = clock::now();
    double accumulator = 0.0;

    Board* board = new Board();
    Snake* snake = new Snake();
    board->updateBoard(snake);
    board->generateRandomFood();

    while (window.isOpen()) {
        // -------- Input / eventos --------
        sf::Event e;
        while (window.pollEvent(e)) {
            if (e.type == sf::Event::Closed) window.close();

            if (e.type == sf::Event::KeyPressed) {
                if (!snake->isAlive()) {
                    window.close();
                }

                board->clearBoard(snake);
                if (e.key.code == sf::Keyboard::W) dir = Dir::UP;
                else if (e.key.code == sf::Keyboard::S) dir = Dir::DOWN;
                else if (e.key.code == sf::Keyboard::A) dir = Dir::LEFT;
                else if (e.key.code == sf::Keyboard::D) dir = Dir::RIGHT;

                snake->doLegalMove(dir, board);
                
                board->updateBoard(snake);
            }
        }

        // -------- Timestep fijo (lógica independiente del render) --------
        auto now = clock::now();
        double frame = std::chrono::duration<double>(now - last).count();
        last = now;
        accumulator += frame;
        // place random food on board

//----------------------------------------------------
        while (accumulator >= STEP_SEC) {
            if (!snake->isAlive()) {
                window.close();
            }

            board->clearBoard(snake);
            snake->doLegalMove(dir, board);
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