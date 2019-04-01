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
    m_x -= 1;
}

void Enemy::clean()
{
    
}