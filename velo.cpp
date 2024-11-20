#include <string>
#include <vector>

#include <glm/glm.hpp>

#include "object.h"
#include "velo.h"

Velo::Velo(std::string path) : o(std::vector<glm::vec3>(), std::vector<glm::vec2>(), path) {
    this->path = path;
};

void Velo::build(){
     // On crée un premier disque

    const int numSegments = 100;
    const float radius = 0.25f;
    const float x = -0.5f;
    const float y = -0.5f;
    const float r = 1.0f;
    std::vector<glm::vec3> disk_vertices;
    std::vector<glm::vec2> disk_uvs;
    std::vector<unsigned int> disk_indices;

    disk_vertices.push_back(glm::vec3(x, y, 0.0f));
    disk_uvs.push_back(glm::vec2(0.5f, 0.5f));

    for (int i = 0; i < numSegments; ++i) {
        float const t = 2 * M_PI * (float)i / (float)numSegments;
        disk_vertices.push_back(glm::vec3(x + sin(t) * radius, y + cos(t) * radius, 0.0f));
        disk_uvs.push_back(glm::vec2((sin(t) * 0.5f) + 0.5f, (cos(t) * 0.5f) + 0.5f));
        disk_vertices.push_back(glm::vec3(x, y, 0.0f));
        disk_uvs.push_back(glm::vec2(0.5f, 0.5f));
    }

    o = Object(disk_vertices, disk_uvs, path + "/textures/roche.jpg");
    };

Velo::~Velo(){
    //appel au destructeur objet implicite
};

Object Velo::getVelo(){
    return o;
};