#ifndef ROAD_H
#define ROAD_H

#include <vector>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/string_cast.hpp>
#include <iostream>
#include "object.h"

class Road : public Object {
public:
    Road(const std::string& objPath, const std::string& texturePath);
    ~Road();

    glm::vec3 advancePosition(float& distanceTraveled, float distanceStep);
    glm::vec3 calculateDirection(float& distanceTraveled, float distanceStep);

    float calculateTotalDistance();
    glm::vec3 getInitialPosition();
    glm::vec3 getPositionAtDistance(float distance);

    std::vector<glm::vec3> *vertices;

private:

};

#endif // ROAD_H