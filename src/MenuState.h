#ifndef MENUSTATE_H
#define MENUSTATE_H

#include "GameState.h"
#include <vector>

class MenuState : public GameState
{
public:
    
private:

protected:
    typedef void(*Callback)();
    virtual void setCallbacks(const std::vector<Callback>& callbacks) = 0;
    std::vector<Callback> m_callbacks; 
    //std::vector<GameObject*> m_gameObjects;
    //std::vector<std::string> m_textureIDList;
};

#endif // MENUSTATE_H
