#include "GUI.hpp"
#include <SFML/Graphics.hpp>

GUI::GUI() {

}

GUI::~GUI() {

}

void GUI::render() {
    sf::RenderWindow window(sf::VideoMode(400, 400), "Snake");
    window.setFramerateLimit(60);

    while (window.isOpen()) {
        sf::Event event;
    
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        window.clear(sf::Color::Black);
        window.display();
    }
}