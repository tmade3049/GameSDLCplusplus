#ifndef LOADERPARAMS_H
#define LOADERPARAMS_H

#include<iostream>

#include "SDL.h"

class LoaderParams
{
public:
    LoaderParams(int x, int y, int width, int height, std::string textureID, int flip = 0, int numFrames = 0, int callbackID = 0, int animSpeed = 0);
        
    ~LoaderParams();
    
    int getX() const { return m_x; }
    int getY() const { return m_y; }
    int getWidth() const { return m_width; }
    int getHeight() const { return m_height; }
    int getCallbackID() const {return m_callbackID;}
    int getAnimSpeed() const {return m_animSpeed;}
    int getNumFrames() const {return m_numFrames;}
    std::string getTextureID() const { return m_textureID; }
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

private:
    std::string m_textureID;
    SDL_RendererFlip m_flip;
    
    int m_nFlip;
    
    int m_width;
    int m_height;
    
    int m_x;
    int m_y;
    
    int m_callbackID;
    int m_animSpeed;
    
    int m_numFrames;
    
};

#endif // LOADERPARAMS_H
