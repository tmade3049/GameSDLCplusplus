#ifndef GAMESTATE_H
#define GAMESTATE_H

#include <string>
#include <vector>
#include "GameObject.h"

class GameState
{
public:
    virtual void update() = 0;
    virtual void render() = 0;
    virtual bool onEnter() = 0;
    virtual bool onExit() = 0;
    virtual std::string getStateID() const = 0;
protected:
    std::vector<std::string> m_textureIDList;
    std::vector<GameObject*> m_gameObjects;
};

enum game_states
{
    MENU = 0,
    PLAY = 1,
    GAMEOVER = 2
};

#endif // GAMESTATE_H
