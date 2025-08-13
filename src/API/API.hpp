#pragma once

struct GamesList {
    int id;
    GamesList* nextGame;
};

class API {
    private:
        GamesList* game;
    public:
        API();
        ~API();

        // Calls the program externally and provides a series of
        // functions to be used. One of them allows to run the game
        // multiple times.
        void createApi();

        // Creates a new game and returns an Id number of itself.
        // Parameters: 0 means no render, 1 renders the game.
        int createNewGame(int render);

        template <typename T>
        auto returnGameData(T&& apiUser, int idGame) {
            // lógica
            // return algo;
        }
};
