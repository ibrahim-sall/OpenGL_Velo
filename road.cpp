#include "road.h"

Road::Road(const std::string& objPath, const std::string& texturePath)
    : Object(objPath, texturePath), vertices(new std::vector<glm::vec3>()){
    std::vector<glm::vec2> uvs;
    std::vector<glm::vec3> normals;
    loadOBJ(objPath.c_str(), *vertices,  uvs, normals);
}

Road::~Road() {
    delete vertices;
}

glm::vec3 Road::advancePosition(float& distanceTraveled, float distanceStep) {
    if (vertices->empty()) {
        return glm::vec3(0.0f);
    }

    float totalDistance = calculateTotalDistance();
    distanceTraveled += distanceStep;

    // Boucler la distance si elle dépasse la distance totale
    if (distanceTraveled > totalDistance) {
        distanceTraveled -= totalDistance;
    }

    float accumulatedDistance = 0.0f;
    for (size_t i = 1; i < vertices->size(); ++i) {
        float segmentDistance = glm::distance((*vertices)[i - 1], (*vertices)[i]);
        if (accumulatedDistance + segmentDistance >= distanceTraveled) {
            float localT = (distanceTraveled - accumulatedDistance) / segmentDistance;
            glm::vec3 position = glm::mix((*vertices)[i - 1], (*vertices)[i], localT);

            // Appliquer la rotation et la mise à l'échelle
            glm::mat4 transformMatrix = glm::mat4(1.0f);
            transformMatrix = glm::translate(transformMatrix, position);
            transformMatrix = glm::rotate(transformMatrix, rotationAngles.x, glm::vec3(1.0f, 0.0f, 0.0f));
            transformMatrix = glm::rotate(transformMatrix, rotationAngles.y, glm::vec3(0.0f, 1.0f, 0.0f));
            transformMatrix = glm::rotate(transformMatrix, rotationAngles.z, glm::vec3(0.0f, 0.0f, 1.0f));
            transformMatrix = glm::scale(transformMatrix, scale);

            glm::vec4 transformedPosition = transformMatrix * glm::vec4(position, 1.0f);

            return glm::vec3(transformedPosition);
        }
        accumulatedDistance += segmentDistance;
    }

    return vertices->back();
}

glm::vec3 Road::calculateDirection(float& distanceTraveled, float distanceStep) {
    if (vertices->empty()) {
        return glm::vec3(0.0f);
    }

    float totalDistance = calculateTotalDistance();
    distanceTraveled += distanceStep;

    // Boucler la distance si elle dépasse la distance totale
    if (distanceTraveled > totalDistance) {
        distanceTraveled -= totalDistance;
    }

    float accumulatedDistance = 0.0f;
    for (size_t i = 1; i < vertices->size(); ++i) {
        float segmentDistance = glm::distance((*vertices)[i - 1], (*vertices)[i]);
        if (accumulatedDistance + segmentDistance >= distanceTraveled) {
            glm::vec3 direction = glm::normalize((*vertices)[i] - (*vertices)[i - 1]);

            // Appliquer la rotation et la mise à l'échelle
            glm::mat4 transformMatrix = glm::rotate(glm::mat4(1.0f), rotationAngles.x, glm::vec3(1.0f, 0.0f, 0.0f));
            transformMatrix = glm::scale(transformMatrix, scale);
            glm::vec4 transformedDirection = transformMatrix * glm::vec4(direction, 0.0f);

            return glm::vec3(transformedDirection);
        }
        accumulatedDistance += segmentDistance;
    }

    return glm::normalize(vertices->back() - (*vertices)[vertices->size() - 2]);
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
        return (*vertices)[0];
    }
    return glm::vec3(0.0f);
}

glm::vec3 Road::getPositionAtDistance(float distance) {
    if (vertices->empty()) {
        return glm::vec3(0.0f);
    }

    float totalDistance = calculateTotalDistance();
    distance = fmod(distance, totalDistance);

    float accumulatedDistance = 0.0f;
    for (size_t i = 1; i < vertices->size(); ++i) {
        float segmentDistance = glm::distance((*vertices)[i - 1], (*vertices)[i]);
        if (accumulatedDistance + segmentDistance >= distance) {
            float localT = (distance - accumulatedDistance) / segmentDistance;
            glm::vec3 position = glm::mix((*vertices)[i - 1], (*vertices)[i], localT);

            // Appliquer la rotation et la mise à l'échelle
            glm::mat4 transformMatrix = glm::mat4(1.0f);
            transformMatrix = glm::translate(transformMatrix, position);
            transformMatrix = glm::rotate(transformMatrix, rotationAngles.x, glm::vec3(1.0f, 0.0f, 0.0f));
            transformMatrix = glm::rotate(transformMatrix, rotationAngles.y, glm::vec3(0.0f, 1.0f, 0.0f));
            transformMatrix = glm::rotate(transformMatrix, rotationAngles.z, glm::vec3(0.0f, 0.0f, 1.0f));
            transformMatrix = glm::scale(transformMatrix, scale);

            glm::vec4 transformedPosition = transformMatrix * glm::vec4(position, 1.0f);

            return glm::vec3(transformedPosition);
        }
        accumulatedDistance += segmentDistance;
    }

    return vertices->back();
}