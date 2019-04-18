#ifndef LEVELPARSER_H
#define LEVELPARSER_H

#include <vector>

#include "Level.h"
#include "Layer.h"
#include "tinyxml.h"

class LevelParser
{
public:
    Level* parseLevel(const char* levelFile);
    ~LevelParser(){}
private:
    void parseTilesets(int firstGridID, TiXmlElement* pTilesetRoot, std::vector<Tileset>* pTilesets);
    void parseTileLayer(TiXmlElement* pTileElement, std::vector<Layer*> *pLayers, const std::vector<Tileset>* pTilesets);
    
    int m_tileSize;
    int m_width;
    int m_height;
};

#endif // LEVELPARSER_H
