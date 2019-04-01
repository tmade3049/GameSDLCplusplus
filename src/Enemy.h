#ifndef ENEMY_H
#define ENEMY_H

#include "SDLGameObject.h"
#include "GameObject.h"

class Enemy : public SDLGameObject
{
public:
    Enemy(const LoaderParams* pParams);
    ~Enemy();
    
    //void load(int x, int y, int width, int height, std::string textureID, SDL_RendererFlip flip = SDL_FLIP_NONE);
    virtual void draw(SDL_Renderer* pRenderer);
    virtual void update();
    virtual void clean();
};

#endif // ENEMY_H
