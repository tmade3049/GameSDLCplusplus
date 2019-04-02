#ifndef GAMEOBJECT_H
#define GAMEOBJECT_H

#include<iostream>

#include "LoaderParams.h"

class GameObject
{
public:   
    
    //void load(int x, int y, int width, int height, std::string textureID, SDL_RendererFlip flip = SDL_FLIP_NONE);
    virtual void draw() = 0;
    virtual void update() = 0;
    virtual void clean() = 0;
    
protected:

    GameObject(const LoaderParams* pParams);
    virtual ~GameObject();
    
    /*
    std::string m_textureID;
    
    int m_currentRow;
    int m_currentFrame;
    
    SDL_RendererFlip m_flip;
    
    int m_width;
    int m_height;
    
    int m_x;
    int m_y;
     * */
};

#endif // GAMEOBJECT_H
