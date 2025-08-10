#include <array>
#include "Board.hpp"
#include <iostream>
#include <cstdint>

std::array<std::array<Cell, WIDTH>, HEIGHT> board{};

// Constructor: inicializa todo a 0
Board::Board() {
    clear();
}

// Limpia el tablero
void Board::clear() {
    for (auto& row : board) {
        row.fill(0);
    }
}

// Setea el valor de una celda
void Board::set(int x, int y, Cell value) {
    if (x >= 0 && x < WIDTH && y >= 0 && y < HEIGHT) {
        board[y][x] = value;
    }
}

// Obtiene el valor de una celda
Cell Board::get(int x, int y) const {
    if (x >= 0 && x < WIDTH && y >= 0 && y < HEIGHT) {
        return board[y][x];
    }
    return 0;
}

bool Board::checkColision(int x, int y)
{
    return false;
}

// Acceso crudo (si alguna vez querés iterar rápido)
const auto& Board::data() const { return board; }
auto& data() { return board; }

// int main() {
//     Board* bb = new Board();

//     for (std::array<Cell, WIDTH> i : bb->board) {
//         std::string row;

//         for (int n : i) {
//             row += std::to_string(i[n]); // convierte y concatena
//         }
        
//         std::cout << row << std::endl;
//     }

//     return 0;
// }
