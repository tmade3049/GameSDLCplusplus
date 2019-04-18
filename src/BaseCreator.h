#ifndef BASECREATOR_H
#define BASECREATOR_H

#include <string>
#include <map>
#include "GameObject.h"

class BaseCreator
{
public:
    virtual GameObject* createGameObject() const = 0;
    virtual ~BaseCreator() {}
};

#endif // BASECREATOR_H
