#include "snake/Game.hpp"
#include "SFML/Graphics.hpp"
#include <chrono>
#include <iostream>

bool Game::snakeAlive() {
    return snake->isAlive();
}

void drawSnake(sf::RenderWindow &window, Board &board, int cellSize = 24, sf::Vector2f origin = {0.f, 0.f}) {
    sf::RectangleShape rect;
    rect.setSize(sf::Vector2f((float)cellSize, (float)cellSize));
    rect.setOutlineThickness(1.f); // poné 1.f si querés ver la grilla
    rect.setOutlineColor(sf::Color(50, 50, 50));

    for (int y = 0; y < HEIGHT; ++y) {
        for (int x = 0; x < WIDTH; ++x) {
            Cell const v = board.get(x, y);

            // Color por tipo de celda
            if (v == EMPTY)
                rect.setFillColor(sf::Color(25, 25, 25));
            if (v == SNAKE)
                rect.setFillColor(sf::Color(60, 200, 80)); // verde
            if (v == HEAD)
                rect.setFillColor(sf::Color(80, 200, 80)); // verde
            else if (v == FOOD)
                rect.setFillColor(sf::Color(220, 60, 60)); // rojo

            rect.setPosition(origin.x + x * cellSize, origin.y + y * cellSize);
            window.draw(rect);
        }
    }
}

Game::Game(bool doesRender) {
    snake = new Snake();
    board = new Board(snake);
    render = doesRender;

    legalMoves = 0;
    steps = 0;
    board->clear();
    board->updateBoard();
}

void Game::step(Dir dir) {
    if (snake->isAlive()) {
        move(dir);
        snake->autoMove(board);
        board->clear();
        board->updateBoard();

        steps++;
    }
}

void Game::playGame() {
    Dir dir = snake->movingTo;

    if (render) {
        sf::RenderWindow window(sf::VideoMode(800, 600), "Snake");
        window.setFramerateLimit(60); // tope de FPS (render)

        while (window.isOpen() && snake->isAlive()) {
            // -------- Input / eventos --------
            sf::Event e;
            while (window.pollEvent(e)) {
                if (e.type == sf::Event::Closed)
                    window.close();

                if (e.type == sf::Event::KeyPressed) {

                    if (e.key.code == sf::Keyboard::W)
                        dir = Dir::UP;
                    else if (e.key.code == sf::Keyboard::S)
                        dir = Dir::DOWN;
                    else if (e.key.code == sf::Keyboard::A)
                        dir = Dir::LEFT;
                    else if (e.key.code == sf::Keyboard::D)
                        dir = Dir::RIGHT;
                    else if (e.key.code == sf::Keyboard::T) {
                    }

                    this->step(dir);
                }
            }

            window.clear();
            drawSnake(window, *board, 24);
            window.display();
        }
    }
}

GameInfo Game::getGameInfo() {
    std::vector<float> entireBoard;

    for (size_t i = 0; i < board->getBoard().size(); i++) {
        for (size_t j = 0; j < board->getBoard()[i].size(); j++) {
            entireBoard.emplace_back(board->getBoard()[i][j]);
        }
    }

    return {entireBoard, snake->isAlive(), snake->movingTo, legalMoves, steps, score};
}

void Game::move(Dir dir) {
    legalMoves += snake->doLegalMove(dir);
}

// std::string getBoardState(Board *board) {
//     std::string boardState = "";

//     for (size_t x = 0; x < WIDTH; x++) {
//         for (size_t y = 0; y < HEIGHT; y++) {
//             boardState += std::to_string(board->get(x, y));
//         }
//     }

//     return boardState;
// }

Dir parseAction(const std::string &action) {
    std::string act = action;

    // pasamos a mayúsculas para que sea más flexible
    std::transform(act.begin(), act.end(), act.begin(), ::toupper);

    if (act == "UP" || act == "0")
        return Dir::UP;
    if (act == "RIGHT" || act == "1")
        return Dir::RIGHT;
    if (act == "DOWN" || act == "2")
        return Dir::DOWN;
    if (act == "LEFT" || act == "3")
        return Dir::LEFT;

    return Dir::LEFT; // default si no coincide nada
}