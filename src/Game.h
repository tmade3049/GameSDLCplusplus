#ifndef GAME_H
#define GAME_H

#include<iostream>
#include<vector>

#include "SDLGameObject.h"
#include "TextureManager.h"
#include "GameStateMachine.h"

class Game
{
public:    
    static Game* Instance();
    bool init(const char* title, int xpos, int ypos, int width, int height, bool fullscreen);
    void render();
    void update();
    void handleEvents();
    void clean();
    bool running(){return m_bRunning;}
    void quit();
    
    SDL_Renderer* getRenderer() const 
    { 
        return m_pRenderer; 
    }
    GameStateMachine* getStateMachine()
    { 
        return m_pGameStateMachine; 
    }
   
    int getGameWidth() const
    {
        return m_gameWidth;
    }
    
    int getGameHeight() const
    {
        return m_gameHeight;
    }

private:
    Game();
    ~Game();
    
    static Game* s_pInstance;
        
    SDL_Window* m_pWindow;
    SDL_Renderer* m_pRenderer;
   
    int m_currentFrame;

    typedef TextureManager TheTextureManager;
        
    bool m_bRunning;
    
    std::vector<SDLGameObject*> m_gameObjects;
    
    SDLGameObject* m_player;
    SDLGameObject* m_enemy1;
    SDLGameObject* m_enemy2;
    SDLGameObject* m_enemy3;
    
    int mm_currentGameState = MENU;
    
    int  m_gameWidth, m_gameHeight;
    
    GameStateMachine* m_pGameStateMachine;
    
};

typedef Game TheGame;

#endif // GAME_H

