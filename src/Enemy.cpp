#include "Enemy.h"

Enemy::Enemy() : SDLGameObject()
{
    
}

void Enemy::load(const LoaderParams* pParams)
{
    SDLGameObject::load(pParams);
}

Enemy::~Enemy()
{
}

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