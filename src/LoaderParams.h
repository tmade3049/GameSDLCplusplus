#ifndef LOADERPARAMS_H
#define LOADERPARAMS_H

#include<iostream>

#include "SDL.h"

class LoaderParams
{
public:
    LoaderParams(int x, int y, int width, int height, std::string textureID, SDL_RendererFlip flip = SDL_FLIP_NONE);
        
    ~LoaderParams();
    
    int getX() const { return m_x; }
    int getY() const { return m_y; }
    int getWidth() const { return m_width; }
    int getHeight() const { return m_height; }
    std::string getTextureID() const { return m_textureID; }
    SDL_RendererFlip getFlip() const { return m_flip;}

private:
    std::string m_textureID;
    SDL_RendererFlip m_flip;
    
    int m_width;
    int m_height;
    
    int m_x;
    int m_y;
    
};

#endif // LOADERPARAMS_H
