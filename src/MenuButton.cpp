#include "MenuButton.h"
#include "Vector2D.h"
#include "InputHandler.h"
#include "SDLGameObject.h"

//MenuButton::MenuButton(const LoaderParams* pParams, void (*callback)()) : SDLGameObject(pParams), m_callback(callback)
MenuButton::MenuButton() : SDLGameObject()
{
}

void MenuButton::load(const LoaderParams *pParams){
    SDLGameObject::load(pParams);
    m_callbackID = pParams->getCallbackID();
    m_currentFrame = MOUSE_OUT;
}

MenuButton::~MenuButton()
{
}

void MenuButton::draw()
{
    SDLGameObject::draw(); // use the base class drawing
}

void MenuButton::update()
{
    Vector2D* pMousePos = InputHandler::Instance()->getMousePositon();
    
    if(pMousePos->getX() < (m_position.getX() + m_width)
        && pMousePos->getX() > m_position.getX()
        && pMousePos->getY() < (m_position.getY() + m_height)
        && pMousePos->getY() > m_position.getY())
    {
        if(TheInputHandler::Instance()->getMouseButtonState(LEFT) && m_bReleased)
        {
            m_currentFrame = CLICKED;
            //m_callback(); // call our callback function
            m_bReleased = false;
        }
        else if(!TheInputHandler::Instance()->getMouseButtonState(LEFT))
        {
            m_bReleased = true;
            if (m_currentFrame == CLICKED)
                m_callback();
            m_currentFrame = MOUSE_OVER;
        }
    }  
    else{
        m_currentFrame = MOUSE_OUT;
    }
}

void MenuButton::clean()
{
}

