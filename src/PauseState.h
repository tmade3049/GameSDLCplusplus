#ifndef PAUSESTATE_H
#define PAUSESTATE_H

#include "GameObject.h"
#include "MenuState.h"

#include <vector>

class PauseState : public MenuState
{
public:
    virtual void update();
    virtual void render();
    virtual bool onEnter();
    virtual bool onExit();
    virtual std::string getStateID() const { return s_pauseID; }
    
private:
    virtual void setCallbacks(const std::vector<Callback>& callbacks);
    static void s_pauseToMain();
    static void s_resumePlay();
    static const std::string s_pauseID;
    //std::vector<GameObject*> m_gameObjects;
   
};

#endif // PAUSESTATE_H