#include "Player.h"
#include "InputHandler.h"

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
    
    m_velocity.setX((float)(0));
    m_velocity.setY((float)(0));
    
    handleInput();
    
//    m_acceleration.setX(0);
//    m_acceleration.setY(0);

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