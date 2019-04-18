#ifndef SDLGAMEOBJECT_H
#define SDLGAMEOBJECT_H

#include <iostream>

#include "GameObject.h"
#include "Vector2D.h"

class SDLGameObject : public GameObject
{
public:
    SDLGameObject();
    ~SDLGameObject();
    
    virtual void draw();
    virtual void update();
    virtual void clean();
    virtual void load(const LoaderParams* pParams);
    
    Vector2D& getPosition() { return m_position; }
    int getWidth() { return m_width; }
    int getHeight() { return m_height; }
    int getNumFrames(){return m_numFrames;}
    SDL_RendererFlip getFlip() const 
    {
        switch(m_nFlip)
        {
            case 0:
                return SDL_FLIP_NONE;
            case 1:
                return SDL_FLIP_HORIZONTAL;                
            case 2: 
                return SDL_FLIP_VERTICAL; 
            default:
                return SDL_FLIP_NONE;
        }
    }
    
protected:

    Vector2D m_position;
    Vector2D m_velocity;
    Vector2D m_acceleration;
    
    int m_width;
    int m_height;
    int m_currentRow;
    int m_currentFrame;
    int m_numFrames;
    int m_nFlip;
    std::string m_textureID; 
    SDL_RendererFlip m_flip;
};

#endif // SDLGAMEOBJECT_H
