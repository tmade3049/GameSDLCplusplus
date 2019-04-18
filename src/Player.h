#ifndef PLAYER_H
#define PLAYER_H

#include "SDLGameObject.h"
#include "LoaderParams.h"
#include "BaseCreator.h"

class Player : public SDLGameObject
{
public:
    Player();
    ~Player();
    
    virtual void draw(SDL_Renderer* pRenderer);
    virtual void update();
    virtual void clean();
    virtual void load(const LoaderParams* pParams);
    void handleInput();

};
class PlayerCreator : public BaseCreator
{
    GameObject* createGameObject() const
    {
        return new Player();
    }
};
#endif // PLAYER_H
