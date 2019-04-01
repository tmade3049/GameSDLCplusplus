#include "SDLGameObject.h"

#include "LoaderParams.h"
#include "TextureManager.h"
#include "Game.h"

SDLGameObject::SDLGameObject(const LoaderParams* pParams) : 
    GameObject(pParams)
{
    m_x = pParams->getX();
    m_y = pParams->getY();
    m_width = pParams->getWidth();
    m_height = pParams->getHeight();
    m_textureID = pParams->getTextureID();
    m_flip = pParams->getFlip();
    
    m_currentRow = 1;
    m_currentFrame = 1;
}

SDLGameObject::~SDLGameObject()
{
}

void SDLGameObject::draw()
{
    TextureManager::Instance()->drawFrame(m_textureID, m_x, m_y, m_width, m_height, m_currentRow, m_currentFrame, Game::Instance()->getRenderer(), m_flip);
}
void SDLGameObject::update()
{
    
}
void SDLGameObject::clean()
{
    
}
