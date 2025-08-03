#include "Calculator.hpp"
#include <iostream>
#include <stdexcept>

// Constructor
Calculator::Calculator() {
}

// Destructor
Calculator::~Calculator() {
}

float Calculator::sumar(float a, float b) {
    return a + b;
}

float Calculator::dividir(float a, float b) {
    if (b == 0.0f) {
        throw std::runtime_error("División por cero");
    }
    
    return a / b;
}