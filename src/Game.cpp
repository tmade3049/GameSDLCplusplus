#include "Game.h"

#include "Player.h"
#include "Enemy.h"
#include "InputHandler.h"
#include "MainMenuState.h"
#include "PlayState.h"
#include "GameObjectFactory.h"
#include "MenuButton.h"
#include "AnimatedGraphic.h"

Game* Game::s_pInstance = 0;

Game::Game()
{
}

Game::~Game()
{
}

bool Game::init(const char* title, int xpos, int ypos, int width, int height, bool fullscreen)
{
    int flags = 0; 
    
    m_gameHeight = height;
    m_gameWidth = width;
    
    TheGameObjectFactory::Instance()->registerType("MenuButton", new MenuButtonCreator());
    TheGameObjectFactory::Instance()->registerType("Player", new PlayerCreator());
    TheGameObjectFactory::Instance()->registerType("Enemy", new EnemyCreator());
    TheGameObjectFactory::Instance()->registerType("AnimatedGraphic", new AnimatedGraphicCreator());
    InputHandler::Instance()->initialiseJoysticks();
    
    if (fullscreen)
    {
        flags = SDL_WINDOW_OPENGL;
    }
    
    if(SDL_Init(SDL_INIT_EVERYTHING) == 0)
    {
        m_pWindow = SDL_CreateWindow(title, xpos, ypos, width, height, flags);
        
        if(m_pWindow != 0)
        {
            m_pRenderer = SDL_CreateRenderer(m_pWindow, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
            
            if(m_pRenderer != 0)
            {
                SDL_SetRenderDrawColor(m_pRenderer, 255, 255, 255, 255);
                
                    m_pGameStateMachine = new GameStateMachine();
                    m_pGameStateMachine->changeState(new MainMenuState());
//                    m_pGameStateMachine->changeState(new PlayState());
            }
            else
            {
                return false;
            }        
        }
        else{
            return false;
        }        
    }
    else
    {
        return false;
    }
    
    return m_bRunning = true;
}

void Game::render()
{
    SDL_RenderClear(m_pRenderer);

    m_pGameStateMachine->render();
    
    SDL_RenderPresent(m_pRenderer);
}

void Game::clean()
{
    SDL_DestroyWindow(m_pWindow);
    SDL_DestroyRenderer(m_pRenderer);
    InputHandler::Instance()->clean();
    SDL_Quit();
}

void Game::handleEvents()
{
   InputHandler::Instance()->update();
   if(InputHandler::Instance()->isKeyDown(SDL_SCANCODE_RETURN))
    {
        m_pGameStateMachine->changeState(new PlayState());
    }
}
void Game::update()
{
    m_pGameStateMachine->update();    
}

void Game::quit()
{
    m_bRunning = false;
}

Game* Game::Instance()
{
    if(s_pInstance == 0)
    {
        s_pInstance = new Game();
        return s_pInstance;
    }
}



