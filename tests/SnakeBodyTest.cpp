#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "../headers/SnakeBody.hpp"

TEST_CASE("SnakeBody moves correctly") {
    SnakePart part {5, 6, nullptr};
    SnakePart head {5, 5, &part};  // SnakePart en (5,5)
    SnakeBody snake (head, Direction::DOWN);        // Creamos SnakeBody con esa parte

    SECTION("Move to the right") {
        snake.move(Direction::RIGHT);
        auto p = snake.getPart();
        REQUIRE(p.posX == 6);
        REQUIRE(p.posY == 5);
    }
}
