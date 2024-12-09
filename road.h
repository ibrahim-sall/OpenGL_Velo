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
    glm::vec3 advancePosition(float& distanceTraveled, float speed, size_t& currentSegment, float& accumulatedDistance);

    float calculateTotalDistance();
    glm::vec3 getInitialPosition();

    float getRoadScale() const;

    std::vector<glm::vec3> reconstructCenterLine() const;

    std::vector<glm::vec3> *vertices;

private:
    std::vector<glm::vec3> centerLine;

};

#endif // ROAD_H