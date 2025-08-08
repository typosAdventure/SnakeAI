#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "../src/game/SnakeBody.hpp"

TEST_CASE("SnakeBody moves correctly") {
    SnakePart tail {5, 7, nullptr};
    SnakePart part {5, 6, &tail};
    SnakePart head {5, 5, &part};  // SnakePart en (5,5)
    SnakeBody snake (head, Direction::DOWN);        // Creamos SnakeBody con esa parte

    SECTION("Move right") {
        snake.move(Direction::RIGHT);
        SnakePart p = snake.getPart();
        REQUIRE(p.posX == 6);
        REQUIRE(p.posY == 5);
    }

    // SECTION("Move left") {
    //     snake.move(Direction::RIGHT);
    //     auto p = snake.getPart();
    //     REQUIRE(p.posX == 6);
    //     REQUIRE(p.posY == 5);
    // }

    // SECTION("Move up") {
    //     snake.move(Direction::RIGHT);
    //     auto p = snake.getPart();
    //     REQUIRE(p.posX == 6);
    //     REQUIRE(p.posY == 5);
    // }

    // SECTION("Move down") {
    //     snake.move(Direction::RIGHT);
    //     auto p = snake.getPart();
    //     REQUIRE(p.posX == 6);
    //     REQUIRE(p.posY == 5);
    // }
}
