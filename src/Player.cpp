#include "Player.h"
#include "InputHandler.h"

Player::Player() : SDLGameObject() 
{
}

void Player::load(const LoaderParams* pParams)
{
    SDLGameObject::load(pParams);
}

Player::~Player()
{
}

void Player::draw(SDL_Renderer* pRenderer)
{
    SDLGameObject::draw();
}

void Player::update()
{
    m_currentFrame = int(((SDL_GetTicks() / 100) % 8));
    
    m_velocity.setX((float)(0));
    m_velocity.setY((float)(0));
    
    handleInput();

    SDLGameObject::update();
}

void Player::clean()
{    
}

void Player::handleInput()
{
    if(InputHandler::Instance()->joysticksInitialised())
    {
        if(InputHandler::Instance()->xvalue(0,1) > 0 
        || InputHandler::Instance()->xvalue(0,1) < 0)
        {
            m_velocity.setX(1 * InputHandler::Instance()->xvalue(0,1));
        }
        if(InputHandler::Instance()->yvalue(0,1) > 0 
        || InputHandler::Instance()->yvalue(0,1) < 0)
        {
            m_velocity.setY(1 * InputHandler::Instance()->yvalue(0,2));
        }        
        if(InputHandler::Instance()->xvalue(0,2) > 0 
        || InputHandler::Instance()->xvalue(0,2) < 0)
        {
            m_velocity.setX(1 * InputHandler::Instance()->xvalue(0,2));
        }
        if(InputHandler::Instance()->xvalue(0,2) > 0 
        || InputHandler::Instance()->xvalue(0,2) < 0)
        {
            m_velocity.setX(1 * InputHandler::Instance()->xvalue(0,2));
        } 
        if(InputHandler::Instance()->getButtonState(0, 3))
        {
            m_velocity.setX(1);
        }
    }
    
    if(InputHandler::Instance()->getMouseButtonState(LEFT))
    {
        //m_velocity.setX(1);
        Vector2D* vec = InputHandler::Instance()->getMousePositon();
        m_velocity = (*vec - m_position) / 100;
    }      

    if(InputHandler::Instance()->isKeyDown(SDL_SCANCODE_RIGHT))
    {
        m_velocity.setX(2);
    }
    if(InputHandler::Instance()->isKeyDown(SDL_SCANCODE_LEFT))
    {
         m_velocity.setX(-2);
    }
    if(InputHandler::Instance()->isKeyDown(SDL_SCANCODE_UP))
    {
         m_velocity.setY(-2);
    }
    if(InputHandler::Instance()->isKeyDown(SDL_SCANCODE_DOWN))
    {
         m_velocity.setY(2);
    }
    
}