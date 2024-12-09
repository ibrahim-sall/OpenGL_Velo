#include "road.h"
#include <iostream>

Road::Road(const std::string& objPath, const std::string& texturePath)
    : Object(objPath, texturePath), vertices(new std::vector<glm::vec3>()){
    std::vector<glm::vec2> uvs;
    std::vector<glm::vec3> normals;
    loadOBJ(objPath.c_str(), *vertices,  uvs, normals);
    centerLine = reconstructCenterLine();
}

Road::~Road() {
    delete vertices;
}

glm::vec3 Road::advancePosition(float& distanceTraveled, float speed, size_t& currentSegment, float& accumulatedDistance) {
    if (centerLine.empty()) {
        return glm::vec3(0.0f);
    }

    float totalDistance = calculateTotalDistance();
    distanceTraveled += speed;

    if (distanceTraveled > totalDistance) {
        distanceTraveled -= totalDistance;
        currentSegment = 0;
        accumulatedDistance = 0.0f;
    }

    static glm::vec3 lastTransformedPosition = glm::vec3(getModelMatrix() * glm::vec4(centerLine[0], 1.0f));

    while (currentSegment < centerLine.size() - 1) {
        float segmentDistance = glm::distance(centerLine[currentSegment], centerLine[currentSegment + 1]);

        if (accumulatedDistance + segmentDistance >= distanceTraveled) {
            float localT = (distanceTraveled - accumulatedDistance) / segmentDistance;

            glm::vec3 position = glm::mix(centerLine[currentSegment], centerLine[currentSegment + 1], localT);

            // Log center position for debugging
            std::cout << "Center Position: (" << centerLine[currentSegment].x << ", " << centerLine[currentSegment].y << ", " << centerLine[currentSegment].z << ")" << std::endl;

            glm::mat4 roadModelMatrix = getModelMatrix();
            glm::vec4 transformedPosition = roadModelMatrix * glm::vec4(position, 1.0f);

            // Log transformed position for debugging
            std::cout << "Transformed Bike Position: (" << transformedPosition.x << ", " << transformedPosition.y << ", " << transformedPosition.z << ")" << std::endl;

            // Check for outrageous variation
            if (glm::length(glm::vec3(transformedPosition) - lastTransformedPosition) > 0.20f) {
                std::cerr << "Warning: Outrageous variation in transformed bike position detected!" << std::endl;
                transformedPosition = glm::vec4(glm::mix(lastTransformedPosition, glm::vec3(transformedPosition), 0.5f), 1.0f);
            }

            lastTransformedPosition = glm::vec3(transformedPosition);

            return glm::vec3(transformedPosition);
        }

        accumulatedDistance += segmentDistance;
        currentSegment++;
    }

    glm::vec3 position = centerLine.back();

    glm::mat4 roadModelMatrix = getModelMatrix();
    glm::vec4 transformedPosition = roadModelMatrix * glm::vec4(position, 1.0f);

    return glm::vec3(transformedPosition);
}

float Road::calculateTotalDistance() {
    float totalDistance = 0.0f;
    for (size_t i = 1; i < vertices->size(); ++i) {
        totalDistance += glm::distance((*vertices)[i - 1], (*vertices)[i]);
    }
    return totalDistance;
}

glm::vec3 Road::getInitialPosition(){
    if (!vertices->empty()) {
        glm::vec3 initialPosition = (*vertices)[0];
        return initialPosition;
    }
    return glm::vec3(0.0f);
}

float Road::getRoadScale() const {
    if (vertices->empty()) {
        return 1.0f;
    }

    glm::vec3 minVertex = (*vertices)[0];
    glm::vec3 maxVertex = (*vertices)[0];

    for (const auto& vertex : *vertices) {
        minVertex = glm::min(minVertex, vertex);
        maxVertex = glm::max(maxVertex, vertex);
    }

    glm::vec3 dimensions = maxVertex - minVertex;
    return glm::length(dimensions);
}
std::vector<glm::vec3> Road::reconstructCenterLine() const {
    std::vector<glm::vec3> centerLine;

    if (vertices->empty() || vertices->size() % 2 != 0) {
        return centerLine;
    }

    for (size_t i = 0; i < vertices->size(); i += 2) {
        glm::vec3 leftVertex = (*vertices)[i];
        glm::vec3 rightVertex = (*vertices)[i + 1];

        glm::vec3 centerPosition = (leftVertex + rightVertex) / 2.0f;
        centerLine.push_back(centerPosition);
    }

    return centerLine;
}
