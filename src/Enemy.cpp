#include "Enemy.h"

Enemy::Enemy(const LoaderParams* pParams) : SDLGameObject(pParams) 
{
}

Enemy::~Enemy()
{
}

/*
void Enemy::load(int x, int y, int width, int height, std::string textureID, SDL_RendererFlip flip)
{
    //GameObject::load(x, y, width, height, textureID, flip);
}
 * */

void Enemy::draw(SDL_Renderer* pRenderer)
{
    SDLGameObject::draw();
}

void Enemy::update()
{
    m_currentFrame = int(((SDL_GetTicks() / 100) % 8));
    m_position.setX(m_position.getX() - 1);
    //m_position.setY(m_position.getY() + 1);
}

void Enemy::clean()
{
    
}