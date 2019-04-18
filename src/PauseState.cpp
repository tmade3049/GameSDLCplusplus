#include "PauseState.h"
#include "MainMenuState.h"
#include "TextureManager.h"
#include "Game.h"
#include "MenuButton.h"
#include "PlayState.h"
#include "InputHandler.h"
#include "StateParser.h"

const std::string PauseState::s_pauseID = "PAUSE";

void PauseState::s_pauseToMain()
{
    TheGame::Instance()->getStateMachine()->changeState(new MainMenuState());
}

void PauseState::s_resumePlay()
{
    TheGame::Instance()->getStateMachine()->popState();
}

void PauseState::update()
{
    for(int i = 0; i < m_gameObjects.size(); i++)
    {
        m_gameObjects[i]->update();
    }
}

void PauseState::render()
{
    for(int i = 0; i < m_gameObjects.size(); i++)
    {
        m_gameObjects[i]->draw();
    }
}

bool PauseState::onEnter()
{
//    if(!TheTextureManager::Instance()->load("../assets/img/resume.png", "resumebutton", TheGame::Instance()->getRenderer()))
//    {
//        return false;
//    }
//    if(!TheTextureManager::Instance()->load("../assets/img/main.png", "mainbutton", TheGame::Instance()->getRenderer()))
//    {
//        return false;
//    }
//    GameObject* button1 = new MenuButton(new LoaderParams(200, 100, 154, 65, "mainbutton"), s_pauseToMain);
//    GameObject* button2 = new MenuButton(new LoaderParams(200, 180, 150, 65, "resumebutton"), s_resumePlay);

//    MenuButton* button1 = new MenuButton();
//    MenuButton* button2 = new MenuButton();
//    
//    button1->load(new LoaderParams(200, 100, 154, 65, "mainbutton"));
//    button2->load(new LoaderParams(200, 180, 150, 65, "resumebutton"));
//    
//    m_gameObjects.push_back(button1);
//    m_gameObjects.push_back(button2);  
    
    StateParser stateParser;    
    stateParser.parseState("../assets/xml/test.xml",s_pauseID,&m_gameObjects,&m_textureIDList);
    
    m_callbacks.push_back(0);
    m_callbacks.push_back(s_pauseToMain);
    m_callbacks.push_back(s_resumePlay);
    
    setCallbacks(m_callbacks);
    
    return true;
}

bool PauseState::onExit()
{
    for(int i = 0; i < m_gameObjects.size(); i++)
    {
//        m_gameObjects[i]->clean()
    TheTextureManager::Instance()->clearFromTextureMap(m_textureIDList[i]);;
    }
//    m_gameObjects.clear();
//    TheTextureManager::Instance()->clearFromTextureMap("resumebutton");
//    TheTextureManager::Instance()->clearFromTextureMap("mainbutton");
//    // reset the mouse button states to false
//    TheInputHandler::Instance()->reset();
    return true;
}

void PauseState::setCallbacks(const std::vector<Callback>& callbacks)
{
    // go through the game objects
    for(int i = 0; i < m_gameObjects.size(); i++)
    {
        // if they are of type MenuButton then assign a callback based on the id passed in from the file
        if(dynamic_cast<MenuButton*>(m_gameObjects[i]))
        {
            MenuButton* pButton = dynamic_cast<MenuButton*>(m_gameObjects[i]);
            pButton->setCallback(callbacks[pButton->getCallbackID()]);
        }
    }
}