#include "Player.h"

Player::Player(const LoaderParams* pParams) : SDLGameObject(pParams) 
{
}

Player::~Player()
{
}

/*
void Player::load(int x, int y, int width, int height, std::string textureID, SDL_RendererFlip flip)
{
    //GameObject::load(x, y, width, height, textureID, flip);
}
 * */

void Player::draw(SDL_Renderer* pRenderer)
{
    SDLGameObject::draw();
}

void Player::update()
{
    m_currentFrame = int(((SDL_GetTicks() / 100) % 8));
    //m_position.setX(m_position.getX() + 1);
    //m_position.setY(m_position.getY() + 1);
    
    m_velocity.setX(1);
    m_acceleration.setX(0);
    m_acceleration.setY(0);
    SDLGameObject::update();
}

void Player::clean()
{
    
}