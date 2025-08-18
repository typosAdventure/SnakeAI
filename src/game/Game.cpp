#include <SFML/Graphics.hpp>
// #include "autoScroller.hpp"
#include <chrono>
#include "Game.hpp"
#include "Board.hpp"
#include "Snake.hpp"
#include <iostream>

std::string getBoardState(Board* board) {
    std::string boardState = "";
    
    for (size_t x = 0; x < WIDTH; x++) {
        for (size_t y = 0; y < HEIGHT; y++) {
            boardState += std::to_string(board->get(x,y));
        }
    }
    
    return boardState;
}

Dir parseAction(const std::string& action) {
    std::string act = action;

    // pasamos a mayúsculas para que sea más flexible
    std::transform(act.begin(), act.end(), act.begin(), ::toupper);

    if (act == "UP"    || act == "0") return Dir::UP;
    if (act == "RIGHT" || act == "1") return Dir::RIGHT;
    if (act == "DOWN"  || act == "2") return Dir::DOWN;
    if (act == "LEFT"  || act == "3") return Dir::LEFT;

    return Dir::LEFT; // default si no coincide nada
}

void Game::moveSnake(Dir dir) {
    snake->externalDir = dir;
}

void drawSnake(sf::RenderWindow& window, const Board& board, int cellSize = 24, sf::Vector2f origin = {0.f, 0.f}) {
    sf::RectangleShape rect;
    rect.setSize(sf::Vector2f((float)cellSize, (float)cellSize));
    rect.setOutlineThickness(1.f); // poné 1.f si querés ver la grilla
    rect.setOutlineColor(sf::Color(50,50,50));

    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            Cell const v = board.get(x, y);
            
            // Color por tipo de celda
            if (v == EMPTY) rect.setFillColor(sf::Color(25, 25, 25));
            if (v == SNAKE) rect.setFillColor(sf::Color(60, 200, 80));  // verde
            else if (v == FOOD) rect.setFillColor(sf::Color(220, 60, 60)); // rojo

            rect.setPosition(origin.x + x * cellSize, origin.y + y * cellSize);
            window.draw(rect);
        }
    }
}

void Game::autoScroll(bool autoScroll) {
    // sf::RenderWindow window(sf::VideoMode(800, 600), "Snake");
    // window.setFramerateLimit(60); // tope de FPS (render)

    // window.close();

    // --- Estado del juego (ejemplo mínimo) ---
    Dir externalDir = Dir::RIGHT;             // dirección actual
    const double STEP_SEC = 0.1;      // 200 ms por paso de lógica (5 pasos/seg)

    // Clock para timestep fijo
    using clock = std::chrono::high_resolution_clock;
    auto last = clock::now();
    double accumulator = 0.0;

    
    Snake* snake = new Snake();
    Board* board = new Board(snake);
    int legalMoves = 0;
    // std::string boardState = getBoardState(board);

    board->clearBoard();
    board->updateBoard();

    std::cout 
            << "{\"state\":\"" << getBoardState(board) << "\","
            << "\"legalMoves\":\"" << legalMoves << "\","
            "\"done\":" << !snake->isAlive() << "}" << std::endl;

    while (snake->isAlive() || legalMoves > 50) {
        std::string input;
        std::getline(std::cin, input);

        board->clearBoard();
        legalMoves += snake->doLegalMove(parseAction(input));
        snake->autoMove(board);
        board->updateBoard();

        std::cout 
            << "{\"state\":\"" << getBoardState(board) << "\","
            << "\"legalMoves\":\"" << legalMoves << "\","
            << "\"score\":\"" << snake->score << "\","
            "\"done\":" << !snake->isAlive() << "}" << std::endl;

        // -------- Timestep fijo (lógica independiente del render) --------
        auto now = clock::now();
        double frame = std::chrono::duration<double>(now - last).count();
        last = now;
        accumulator += frame;

        //----------------------------------------------------
        while (accumulator >= STEP_SEC && autoScroll) {
            if (!snake->isAlive()) {
                std::exit(0);
            }

            board->clearBoard();
            legalMoves += snake->doLegalMove(snake->externalDir);
            snake->autoMove(board);
            board->updateBoard();

            accumulator -= STEP_SEC;
        }
        //----------------------------------------------------

    // -------- Render --------
        // if(true) {
        //     sf::RenderWindow window(sf::VideoMode(800, 600), "Snake");
        //     window.setFramerateLimit(60); // tope de FPS (render)

        //     window.clear();
        //     drawSnake(window, *board, 24);
        //     window.display();
        // }
    }

    std::cout << "Endgame" << std::endl;
}

void Game::playGameBis(bool autoScroll) {
    Game::autoScroll(autoScroll);
}