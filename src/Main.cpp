#include "Game.h"

//Game* g_game = 0;

const int FPS = 60;
const int DELAY_TIME = 1000.0f / FPS;

int main(int argc, char **argv)
{
        //g_game = new Game();
        //g_game->init("Chapter 1", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 640, 480, true);
        
        Uint32 frameStart, frameTime;
        
        if(Game::Instance()->init("Chapter 1", 100, 100, 640, 480, false)){
        
            while(Game::Instance()->running())
            {
                frameStart = SDL_GetTicks();
                
                Game::Instance()->handleEvents();
                Game::Instance()->update();
                Game::Instance()->render();
                
                frameTime = SDL_GetTicks() - frameStart;
                
                if (frameTime < DELAY_TIME)
                {
                    SDL_Delay((int)(DELAY_TIME - frameTime));
                }
            }
        }
        
        Game::Instance()->clean();
        
        return 0;
}