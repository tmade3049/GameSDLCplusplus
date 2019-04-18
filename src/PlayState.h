#ifndef PLAYSTATE_H
#define PLAYSTATE_H

#include "GameState.h"
#include "GameObject.h"
#include "SDLGameObject.h"

#include <vector>
#include "Level.h"

class PlayState : public GameState
{
public:
    virtual void update();
    virtual void render();
    virtual bool onEnter();
    virtual bool onExit();
    virtual std::string getStateID() const { return s_playID; }
    bool checkCollision(SDLGameObject* p1, SDLGameObject* p2);
    
private:
    static const std::string s_playID;
    Level* pLevel;
    //std::vector<GameObject*> m_gameObjects;
    
};

#endif // PLAYSTATE_H
