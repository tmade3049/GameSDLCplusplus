#ifndef GAME_H
#define GAME_H

#include<iostream>
#include<vector>

#include "SDLGameObject.h"
#include "TextureManager.h"

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
    
    SDL_Renderer* getRenderer() const { return m_pRenderer; }
    
private:

    Game();
    ~Game();
    
    static Game* s_pInstance;
        
    SDL_Window* m_pWindow;
    SDL_Renderer* m_pRenderer;
    
    //SDL_Texture* m_pTexture;
    //SDL_Rect m_sourceRectangle;
    //SDL_Rect m_destinationRectangle;
    
    int m_currentFrame;
    //TextureManager m_textureManager;
    
    typedef TextureManager TheTextureManager;
        
    bool m_bRunning;
    
    std::vector<SDLGameObject*> m_gameObjects;
    
    //GameObject m_go;
    
    SDLGameObject* m_player;
    SDLGameObject* m_enemy1;
    SDLGameObject* m_enemy2;
    SDLGameObject* m_enemy3;
    
};
enum game_states
{
    MENU = 0,
    PLAY = 1,
    GAMEOVER = 2
};
#endif // GAME_H
