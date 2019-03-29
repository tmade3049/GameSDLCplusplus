#include "GameObject.h"

GameObject::GameObject()
{
}

GameObject::~GameObject()
{
}

void GameObject::load(int x, int y, int width, int height, std::string textureID, SDL_RendererFlip flip)
{
    m_x = x;
    m_y = y;
    m_width = width;
    m_height = height;
    m_textureID = textureID;
    
    m_currentRow = 1;
    m_currentFrame = 1;    
    
    m_flip = flip;    
    
}
void GameObject::draw(SDL_Renderer* pRenderer)
{
    TextureManager::Instance()->drawFrame(m_textureID, m_x, m_y, m_width, m_height, m_currentRow, m_currentFrame, pRenderer, m_flip);
}
void GameObject::update()
{
    m_currentFrame = int(((SDL_GetTicks() / 100) % 6));
    m_x += 1;
}
void GameObject::clean()
{
    
}