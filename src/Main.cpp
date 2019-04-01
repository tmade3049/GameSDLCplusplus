#include "Game.h"

//Game* g_game = 0;
int main(int argc, char **argv)
{
        //g_game = new Game();
        //g_game->init("Chapter 1", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 640, 480, true);
        
        if(Game::Instance()->init("Chapter 1", 100, 100, 640, 480, false)){
        
            while(Game::Instance()->running())
            {
                Game::Instance()->handleEvents();
                Game::Instance()->update();
                Game::Instance()->render();
                
                SDL_Delay(10);
            }
        }
        
        Game::Instance()->clean();
        
        return 0;
}