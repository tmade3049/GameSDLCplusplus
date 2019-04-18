#include "AnimatedGraphic.h"
#include "SDLGameObject.h"

AnimatedGraphic::AnimatedGraphic() : SDLGameObject()
{
}

AnimatedGraphic::~AnimatedGraphic()
{
}

void AnimatedGraphic::load(const LoaderParams* pParams)
{
    SDLGameObject::load(pParams);
    m_animSpeed = pParams->getAnimSpeed();
}

void AnimatedGraphic::update()
{
    m_currentFrame = int(((SDL_GetTicks() / (1000 / m_animSpeed)) % m_numFrames));
}