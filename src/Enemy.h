#ifndef ENEMY_H
#define ENEMY_H

#include "SDLGameObject.h"
#include "LoaderParams.h"
#include "BaseCreator.h"

class Enemy : public SDLGameObject
{
public:
    Enemy();
    ~Enemy();
    
    virtual void draw(SDL_Renderer* pRenderer);
    virtual void update();
    virtual void clean();
    virtual void load(const LoaderParams* pParams);
};
class EnemyCreator : public BaseCreator
{
    GameObject* createGameObject() const
    {
        return new Enemy();
    }
};
#endif // ENEMY_H
