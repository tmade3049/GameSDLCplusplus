#include "Player.h"

Player::Player()
{
}

Player::~Player()
{
}

void Player::load(int x, int y, int width, int height, std::string textureID, SDL_RendererFlip flip)
{
    GameObject::load(x, y, width, height, textureID, flip);
}

void Player::draw(SDL_Renderer* pRenderer)
{
    GameObject::draw(pRenderer);
}

void Player::update()
{
    m_currentFrame = int(((SDL_GetTicks() / 100) % 6));
    m_x -= 1;
}