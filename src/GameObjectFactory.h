#ifndef GAMEOBJECTFACTORY_H
#define GAMEOBJECTFACTORY_H

#include "GameObject.h"
#include "BaseCreator.h"

class GameObjectFactory
{
public:
    bool registerType(std::string typeID, BaseCreator* pCreator)
    {
        std::map<std::string, BaseCreator*>::iterator it = m_creators.find(typeID);
        // if the type is already registered, do nothing
        if(it != m_creators.end())
        {
            delete pCreator;
            return false;
        }
        m_creators[typeID] = pCreator;
        return true;
    }
    
    GameObject* create(std::string typeID)
    {
        std::map<std::string, BaseCreator*>::iterator it = m_creators.find(typeID);
        if(it == m_creators.end())
        {
            return NULL;
        }
        BaseCreator* pCreator = (*it).second;
        return pCreator->createGameObject();
    }

    static GameObjectFactory* Instance();  
private:
    GameObjectFactory();
    std::map<std::string, BaseCreator*> m_creators;
    static GameObjectFactory* s_pInstance;
};
typedef GameObjectFactory TheGameObjectFactory;
#endif // GAMEOBJECTFACTORY_H
