#ifndef PLAYER_H
#define PLAYER_H

#include "SDLGameObject.h"
#include "LoaderParams.h"

class Player : public SDLGameObject
{
public:
    Player(const LoaderParams* pParams);
    ~Player();
    
    //void load(int x, int y, int width, int height, std::string textureID, SDL_RendererFlip flip = SDL_FLIP_NONE);
    virtual void draw(SDL_Renderer* pRenderer);
    virtual void update();
    virtual void clean();

};

#endif // PLAYER_H
