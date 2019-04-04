#ifndef INPUTHANDLER_H
#define INPUTHANDLER_H

#include<iostream>
#include<vector>
#include "SDL.h"
#include "Vector2D.h"
class InputHandler
{
public:
    static InputHandler* Instance();
    void initialiseJoysticks();
    bool joysticksInitialised() {return m_bJoysticksInitialised; }
        
    void update();
    void clean();
    
    int xvalue(int joy, int stick);
    int yvalue(int joy, int stick);
    
    bool getButtonState(int joy, int buttonNumber)
    {
        return m_buttonStates[joy][buttonNumber];
    }
    
    bool getMouseButtonState(int buttonNumber)
    {
        return m_mouseButtonStates[buttonNumber];
    }
    
    Vector2D* getMousePositon()
    {
        return m_mousePosition;
    }
    
    bool isKeyDown(SDL_Scancode key);
    
private:
    InputHandler();
    ~InputHandler();
    
    std::vector<SDL_Joystick*> m_joysticks;
    bool m_bJoysticksInitialised;
    
    std::vector<std::pair<Vector2D*, Vector2D*>> m_joystickValues;
    std::vector<std::vector<bool>> m_buttonStates;
    std::vector<bool> m_mouseButtonStates;
    
    Vector2D* m_mousePosition = new Vector2D(0,0);
    
    const int m_joystickDeadZone = 10000;
    
    Uint8* m_keystates;

    static InputHandler* s_pInstance;
    
    // handle keyboard events
    void onKeyDown();
    void onKeyUp();
    // handle mouse events
    void onMouseMove(SDL_Event& event);
    void onMouseButtonDown(SDL_Event& event);
    void onMouseButtonUp(SDL_Event& event);
    // handle joysticks events
    void onJoystickAxisMove(SDL_Event& event);
    void onJoystickButtonDown(SDL_Event& event);
    void onJoystickButtonUp(SDL_Event& event);
};
enum mouse_buttons
{
    LEFT = 0,
    MIDDLE = 1,
    RIGHT = 2
};
//typedef InputHandler TheInputHandler;
#endif // INPUTHANDLER_H
