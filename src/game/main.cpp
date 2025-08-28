#include "nn/NeuralNetwork.hpp"
#include "snake/Game.hpp"
#include <iostream>
#include <span>

static std::random_device rd;
static std::mt19937 mutSeed(rd());

std::size_t max_index(std::span<float> s) {
    if (s.empty())
        return std::size_t(-1);                     // o tirá excepción si preferís
    auto it = std::max_element(s.begin(), s.end()); // primera ocurrencia del máximo
    return static_cast<std::size_t>(std::distance(s.begin(), it));
}

void clearCells(CellType cell, std::span<float> &span) {
    for (size_t i = 0; i < span.size(); i++) {
        if (span[i] == (float)cell) {
            span[i] = 1;
        } else {
            span[i] = 0;
        }
    }
}

// Clockwise: UP -> 1000, RIGHT 0100, etc.
void setDir(Dir dir, std::span<float> &span) {
    switch (dir) {
    case Dir::UP:
        span[0] = 1;
        break;
    case Dir::RIGHT:
        span[1] = 1;
        break;
    case Dir::DOWN:
        span[2] = 1;
        break;
    case Dir::LEFT:
        span[3] = 1;
        break;
    default:
        break;
    }
}

float calculateFitness() {
    return 1;
}

float calculateScore() {
    return 1;
}

Dir processDir(std::span<float> span) {

    switch (max_index(span)) {
    case 0:
        return Dir::UP;
    case 1:
        return Dir::RIGHT;
    case 2:
        return Dir::DOWN;
    case 3:
        return Dir::LEFT;
    default:
        return Dir::LEFT;
    }

    return Dir::LEFT;
}

std::vector<float> convertGameInfo(GameInfo gameInfo) {
    // 3 tipos de celdas (body, head y food) + movingTo
    std::vector<float> vec;
    vec.reserve((gameInfo.board.size() * 3) + 4);

    for (int i = 0; i < 3; i++) {
        vec.insert(vec.end(), gameInfo.board.begin(), gameInfo.board.end());
    }
    vec.insert(vec.end(), {0, 0, 0, 0});

    size_t boardSize = gameInfo.board.size();
    std::vector<size_t> sizes = {boardSize, boardSize, boardSize, 4};

    std::vector<std::span<float>> vecSpans = makeSpans(vec, sizes);

    clearCells(SNAKE, vecSpans[0]);
    clearCells(HEAD, vecSpans[1]);
    clearCells(FOOD, vecSpans[2]);
    setDir(gameInfo.movingTo, vecSpans[3]);

    return vec;
}

std::tuple<float, float> playGameNN(NeuralNetwork &net) {
    float fitness = 0;
    float score = 0;
    size_t maxSteps = 30;
    size_t toPlay = 6;
    GameInfo gameInfo;
    Game *game;
    std::vector<float> inputLayer;

    for (size_t i = 0; i < toPlay; i++) {
        game = new Game(false);
        game->playGame();
        gameInfo = game->getGameInfo();

        while (gameInfo.snakeAlive && gameInfo.steps < maxSteps) {
            Dir dir;
            inputLayer = convertGameInfo(gameInfo);
            dir = processDir(processData(inputLayer, net));
            game->step(dir);
            gameInfo = game->getGameInfo();
        }

        size_t legal = gameInfo.legalMoves + 1;

        score += gameInfo.finalScore;
        fitness += gameInfo.finalScore;
    }
    gameInfo = game->getGameInfo();

    delete game;

    return {score / toPlay, fitness / toPlay};
}

int main() {
    size_t gens = 0;
    size_t genPrinter = 0;
    size_t mutations = 64;
    float globalScore = 0;
    // float bestScore = 0;
    float fitness = 0;
    float bestFitness = 0;

    std::vector<size_t> n = {304, 154, 4};
    NeuralNetwork winnerNet = createNewNetwork(n);

    // Game *game = new Game(false);
    // game->playGame();

    while (gens < 10000) {
        float currScore = 0;
        std::vector<NeuralNetwork> nets;

        nets.push_back(winnerNet);

        for (size_t i = 1; i < mutations; i++) {
            float percentage = 100.0f / (5.0f - (100.0f / ((float)gens / 100.0f) + 2.0f));
            // float percentage = 5;
            static std::uniform_real_distribution<float> mut(0, percentage);
            nets.push_back(mutateNetBIS(winnerNet, n, mut(mutSeed)));
        }

        size_t i = 0;
        while (i < nets.size()) {
            std::tuple<float, float> tuple = playGameNN(nets[i]);
            currScore = std::get<0>(tuple);
            fitness = std::get<1>(tuple);

            if (fitness > bestFitness) {
                winnerNet = nets[i];
                bestFitness = fitness;
            }
            if (currScore > globalScore) {
                globalScore = currScore;
            }
            i++;
        }

        gens++;
        genPrinter++;

        if (gens == 1 || genPrinter == 10) {
            std::cout << "Gen: " << gens
                      << ". Best score: " << globalScore
                      << ". Best coef: " << bestFitness
                      << std::endl;

            genPrinter = 0;
        }
    }

    std::cout << "Final score: " << globalScore << std::endl;
    std::cout << "Final coef: " << globalScore << std::endl;
    // std::cout << "{" << winnerNet.weights[0];
    // for (size_t i = 1; i < winnerNet.weights.size(); i++) {
    //     std::cout << "," << winnerNet.weights[i];
    // }
    // std::cout << "}" << std::endl;

    return 0;
}

/*
snakeNN -> Game.playGame();
snakeNN <- Game.getGameInfo();

while(Game.snakeAlive()) {
    snakeNN ... processes ...
    snakeNN.sleep(int seconds);
    snakeNN -> move(Dir dir);
    Game.step();
    snakeNN <- Game.getGameInfo();
}

snakeNN <- Game.getGameInfo();

*/