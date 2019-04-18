#include "Game.h"
#include "zlib.h"
#include <vector>
#include "base64.h"

//Game* g_game = 0;

const int FPS = 60;
const int DELAY_TIME = 1000.0f / FPS;

int main(int argc, char **argv)
{
//     // uncompress zlib compression
//    uLongf numGids = 10 * 10 * sizeof(int);
//    std::vector<unsigned> gids(numGids);
//    std::string decodedIDs = base64_decode("eJxjYKAuiKeBeSPdzKHm1qEWDkPN3JFsJgAU/gxA");
//    uncompress((Bytef*)&gids[0], &numGids,(const Bytef*)decodedIDs.c_str(), decodedIDs.size());
//    std::vector<int> layerRow(10);
//    std::vector<std::vector<int>> data;
//    for(int j = 0; j < 10; j++)
//    {
//        data.push_back(layerRow);
//    }
//    for(int rows = 0; rows < 10; rows++)
//    {
//        for(int cols = 0; cols < 10; cols++)
//        {
//            data[rows][cols] = gids[rows * 10 + cols];
//        }
//    }
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