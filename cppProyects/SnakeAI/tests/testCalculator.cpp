#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "../Calculator.hpp"

TEST_CASE("Sumas simples", "[sumar]") {
    Calculator calc;

    REQUIRE(calc.sumar(2, 3) == 5);
    REQUIRE(calc.sumar(-1, 1) == 0);
    REQUIRE(calc.sumar(0, 0) == 0);
    REQUIRE(calc.sumar(100, 200) == 300);
}

TEST_CASE("División segura", "[dividir]") {
    Calculator calc;

    REQUIRE(calc.dividir(10, 2) == 5);

    REQUIRE_THROWS_AS(calc.dividir(10.0f, 0.0f), std::runtime_error);
}