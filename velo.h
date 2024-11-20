#ifndef VELO_H
#define VELO_H

#include <string>

#include <glm/glm.hpp>

#include "object.h"
#include "vertexbuffer.h"
#include "vertexarray.h"
#include "texture.h"
#include "uvbuffer.h"

class Velo
{
    public:
        Velo(std::string path);
        ~Velo();
        Object getVelo();
        void build();
    protected:
    Object o;
    std::string path;

};

#endif // VELO_H