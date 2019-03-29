#ifndef GAMEOBJECT_H
#define GAMEOBJECT_H

#include<iostream>

#include "SDL.h"
#include "SDL_image.h"

#include "TextureManager.h"

class GameObject
{
public:
    GameObject();
    ~GameObject();
    
    void load(int x, int y, int width, int height, std::string textureID, SDL_RendererFlip flip = SDL_FLIP_NONE);
    void draw(SDL_Renderer* pRenderer);
    void update();
    void clean();
    
protected:
    std::string m_textureID;
    
    int m_currentRow;
    int m_currentFrame;
    
    SDL_RendererFlip m_flip;
    
    int m_width;
    int m_height;
    
    int m_x;
    int m_y;
};

#endif // GAMEOBJECT_H
