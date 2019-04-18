#include "LoaderParams.h"

LoaderParams::LoaderParams(int x, int y, int width, int height, std::string textureID, int flip, int numFrames, int callbackID, int animSpeed) :
    m_x(x),
    m_y(y), 
    m_width(width),
    m_height(height), 
    m_textureID(textureID), 
    m_nFlip(flip), 
    m_flip(getFlip()),
    m_numFrames(numFrames),
    m_callbackID(callbackID),
    m_animSpeed(animSpeed)
{
}

LoaderParams::~LoaderParams()
{
}

