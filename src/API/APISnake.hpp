#pragma once
#include "../game/Game.hpp"

// enum Class Dir;
// template <typename T>

struct GamesList {
    Game* game;
    GamesList* nextGame;
};


class APISnake {
    private:
        GamesList* games;
    public:
        Game* game = new Game();
        
        // Calls the program externally and provides a series of
        // functions to be used.
        // APISnake();

        // ~APISnake();
    
        // Creates a new game and returns an Id number of itself.
        // Parameters:
        //     render: true renders, else does not render.
        //     autoScroll: true autoScrolls, else does not scrolls.
        int createNewGame(bool render, bool autoScroll);

        void autoScroll();

        void returnGameData(int idGame);

        void moveSnake(Dir dir);
        
        // Sets the new snake direction.
            // void move(Dir dir);

        // After the game ends, returns to the apiUser usefull
        // data about the run.
            // void endGame(T&& apiUser);
};