#include "LoaderParams.h"

LoaderParams::LoaderParams(int x, int y, int width, int height, std::string textureID, SDL_RendererFlip flip)
    : m_x(x), m_y(y), m_width(width), m_height(height), m_textureID(textureID), m_flip(flip)
{
}

LoaderParams::~LoaderParams()
{
}

