#ifndef ANIMATEDGRAPHIC_H
#define ANIMATEDGRAPHIC_H

#include "LoaderParams.h"
#include "SDLGameObject.h"
#include "BaseCreator.h"

class AnimatedGraphic : public SDLGameObject
{
public:
    AnimatedGraphic();
    ~AnimatedGraphic();    
    void update();
    void load(const LoaderParams* pParams);
private:
    int m_animSpeed;
};
class AnimatedGraphicCreator : public BaseCreator
{
    GameObject* createGameObject() const
    {
        return new AnimatedGraphic();
    }
};
#endif // ANIMATEDGRAPHIC_H
