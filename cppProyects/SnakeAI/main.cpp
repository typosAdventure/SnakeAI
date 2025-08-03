#include <iostream>
#include "Calculator.hpp"

int main() {
    Calculator calc;

    try {
        float resultado = calc.dividir(10.0f, 0.0f);
        std::cout << "Resultado: " << resultado << std::endl;
    } catch (const std::runtime_error& e) {
        std::cerr << "ERROR: " << e.what() << std::endl;
    }

    return 0;
}