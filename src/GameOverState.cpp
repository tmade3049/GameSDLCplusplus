#include "GameOverState.h"
#include "Game.h"
#include "MainMenuState.h"
#include "PlayState.h"
#include "AnimatedGraphic.h"
#include "MenuButton.h"
#include "TextureManager.h"
#include "InputHandler.h"
#include "StateParser.h"

const std::string GameOverState::s_gameOverID = "GAMEOVER";

void GameOverState::s_gameOverToMain()
{
    TheGame::Instance()->getStateMachine()->changeState(new MainMenuState());
}
void GameOverState::s_restartPlay()
{
    TheGame::Instance()->getStateMachine()->changeState(new PlayState());
}
bool GameOverState::onEnter()
{
//    if(!TheTextureManager::Instance()->load("../assets/img/gameover.png", "gameovertext", TheGame::Instance()->getRenderer()))
//    {
//        return false;
//    }
//    if(!TheTextureManager::Instance()->load("../assets/img/main.png", "mainbutton", TheGame::Instance()->getRenderer()))
//    {
//        return false;
//    }
//    if(!TheTextureManager::Instance()->load("../assets/img/resume.png", "restartbutton", TheGame::Instance()->getRenderer()))
//    {
//        return false;
//    }
//    
//    AnimatedGraphic* gameOverText = new AnimatedGraphic();
//    MenuButton* button1 = new MenuButton();
//    MenuButton* button2 = new MenuButton();  
//
//    gameOverText->load(new LoaderParams(200, 100, 228, 44, "gameovertext", SDL_FLIP_NONE, 2));
//    button1->load(new LoaderParams(200, 200, 154, 65, "mainbutton"));//faltou callback
//    button2->load(new LoaderParams(200, 300, 154, 65, "restartbutton"));//callback
       
//    GameObject* gameOverText = new AnimatedGraphic(a1);
//    GameObject* button1 = new MenuButton(m1);
//    GameObject* button2 = new MenuButton(m2);
        
//    m_gameObjects.push_back(gameOverText);
//    m_gameObjects.push_back(button1);
//    m_gameObjects.push_back(button2);

    StateParser stateParser;    
    stateParser.parseState("../assets/xml/test.xml",s_gameOverID,&m_gameObjects,&m_textureIDList);
    
    m_callbacks.push_back(0);
    m_callbacks.push_back(s_gameOverToMain);
    m_callbacks.push_back(s_restartPlay);
    
    setCallbacks(m_callbacks);
    
    return true;
}
void GameOverState::render()
{
    for(int i = 0; i < m_gameObjects.size(); i++)
    {
        m_gameObjects[i]->draw();
    }
}
void GameOverState::update()
{
    for(int i = 0; i < m_gameObjects.size(); i++)
    {
        m_gameObjects[i]->update();
    }
}
bool GameOverState::onExit()
{
    for(int i = 0; i < m_gameObjects.size(); i++)
    {
//        m_gameObjects[i]->clean();
    TheTextureManager::Instance()->clearFromTextureMap(m_textureIDList[i]);
    }
//    m_gameObjects.clear();
//    TheTextureManager::Instance()->clearFromTextureMap("resumebutton");
//    TheTextureManager::Instance()->clearFromTextureMap("mainbutton");
//    TheTextureManager::Instance()->clearFromTextureMap("gameovertext");
//    // reset the mouse button states to false
//    TheInputHandler::Instance()->reset();
    return true;
}

void GameOverState::setCallbacks(const std::vector<Callback>& callbacks)
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
