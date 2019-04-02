#ifndef SDLGAMEOBJECT_H
#define SDLGAMEOBJECT_H

#include <iostream>

#include "GameObject.h"
#include "Vector2D.h"

class SDLGameObject : public GameObject
{
public:
    SDLGameObject(const LoaderParams* pParams);
    ~SDLGameObject();
    
    virtual void draw();
    virtual void update();
    virtual void clean();
    
protected:
    //int m_x;
    //int m_y;
    Vector2D m_position;
    Vector2D m_velocity;
    Vector2D m_acceleration;
    
    int m_width;
    int m_height;
    int m_currentRow;
    int m_currentFrame;
    std::string m_textureID; 
    SDL_RendererFlip m_flip;
    
    //typedef Game TheGame;
};

#endif // SDLGAMEOBJECT_H
