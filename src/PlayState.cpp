#include "PlayState.h"
#include "TextureManager.h"
#include "Game.h"
#include "MenuButton.h"
#include "Player.h"
#include "Enemy.h"
#include "InputHandler.h"
#include "PauseState.h"
#include "GameOverState.h"
#include "StateParser.h"
#include "LevelParser.h"

const std::string PlayState::s_playID = "PLAY";

void PlayState::update()
{
    if(TheInputHandler::Instance()->isKeyDown(SDL_SCANCODE_ESCAPE))
    {
        TheGame::Instance()->getStateMachine()->pushState(new PauseState());
    }
//    for(int i = 0; i < m_gameObjects.size(); i++)
//    {
//        m_gameObjects[i]->update();
//    }
    //if(checkCollision(dynamic_cast<SDLGameObject*>(m_gameObjects[0]), dynamic_cast<SDLGameObject*>(m_gameObjects[1])))
    {
    //    TheGame::Instance()->getStateMachine()->pushState(new GameOverState());
    }
    pLevel->update();
}

void PlayState::render()
{
//    for(int i = 0; i < m_gameObjects.size(); i++)
//    {
//        m_gameObjects[i]->draw();
//    }
    pLevel->render();
}

bool PlayState::onEnter()
{
    // parse the state
//    StateParser stateParser;
//    stateParser.parseState("../assets/xml/test.xml", s_playID, &m_gameObjects, &m_textureIDList);

//    return true;
    
//    if( !TextureManager::Instance()->load("../assets/img/running.png", "animate", Game::Instance()->getRenderer()))
//    {
//        return false;
//    }
//    if ( !TextureManager::Instance()->load("../assets/img/running_enemy.png", "animate_enemy", Game::Instance()->getRenderer()))
//    {
//        return false;
//    }
//    
//    Player* p1 = new Player();
//    Enemy* e1 = new Enemy();
//    
//    p1->load(new LoaderParams(100, 100, 80, 104, "animate"));
//    e1->load(new LoaderParams(500, 200, 80, 104, "animate_enemy"));
//    
//    m_gameObjects.push_back(p1);
//    m_gameObjects.push_back(e1);
    //m_gameObjects.push_back(new Enemy(new LoaderParams(500, 300, 80, 104, "animate_enemy", SDL_FLIP_HORIZONTAL)));
    
    LevelParser levelParser;
    pLevel = levelParser.parseLevel("../assets/map/map.tmx");

    return true;
}

bool PlayState::onExit()
{
    for(int i = 0; i < m_gameObjects.size(); i++)
    {
//        m_gameObjects[i]->clean();
// clear the texture manager
    TheTextureManager::Instance()->clearFromTextureMap(m_textureIDList[i]);

    }
//    m_gameObjects.clear();
//    TextureManager::Instance()->clearFromTextureMap("animate");
//    TextureManager::Instance()->clearFromTextureMap("animate_enemy");
    
return true;
}

bool PlayState::checkCollision(SDLGameObject* p1, SDLGameObject* p2)
{
    int leftA, leftB;
    int rightA, rightB;
    int topA, topB;
    int bottomA, bottomB;
    
    leftA = p1->getPosition().getX();
    rightA = p1->getPosition().getX() + p1->getWidth();
    topA = p1->getPosition().getY();
    bottomA = p1->getPosition().getY() + p1->getHeight();
    
    //Calculate the sides of rect B
    leftB = p2->getPosition().getX();
    rightB = p2->getPosition().getX() + p2->getWidth();
    topB = p2->getPosition().getY();
    bottomB = p2->getPosition().getY() + p2->getHeight();
    
    //If any of the sides from A are outside of B
    if( bottomA <= topB ){return false;}
    if( topA >= bottomB ){return false; }
    if( rightA <= leftB ){return false; }
    if( leftA >= rightB ){return false;}
    return true;
}