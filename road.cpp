#include "road.h"

Road::Road(const std::string& objPath, const std::string& texturePath)
    : Object(objPath, texturePath), vertices(new std::vector<glm::vec3>()){
    std::vector<glm::vec2> uvs;
    std::vector<glm::vec3> normals;
    loadOBJ(objPath.c_str(), *vertices,  uvs, normals);

    // Log vertices for debugging
    std::cout << "Vertices loaded:" << std::endl;
    // for (const auto& vertex : *vertices) {
    //     std::cout << "Vertex: (" << vertex.x << ", " << vertex.y << ", " << vertex.z << ")" << std::endl;
    // }
}

Road::~Road() {
    delete vertices;
}

glm::vec3 Road::advancePosition(float& distanceTraveled, float speed) {
    if (vertices->empty()) {
        return glm::vec3(0.0f);
    }

    float totalDistance = calculateTotalDistance();
    distanceTraveled += speed;

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

            // Appliquer la transformation complète de la route
            glm::mat4 modelMatrix = getModelMatrix();
            glm::vec4 transformedPosition = modelMatrix * glm::vec4(position, 1.0f);

            return glm::vec3(transformedPosition);
        }

        accumulatedDistance += segmentDistance;
    }

    // Retour à la position initiale
    glm::vec3 position = (*vertices)[0];

    // Appliquer la transformation complète de la route
    glm::mat4 modelMatrix = getModelMatrix();
    glm::vec4 transformedPosition = modelMatrix * glm::vec4(position, 1.0f);

    return glm::vec3(transformedPosition);
}

glm::vec3 Road::calculateDirection(float& distanceTraveled, float speed) {
    if (vertices->empty()) {
        return glm::vec3(0.0f);
    }

    float totalDistance = calculateTotalDistance();
    distanceTraveled += speed;

    // Boucler la distance si elle dépasse la distance totale
    if (distanceTraveled > totalDistance) {
        distanceTraveled -= totalDistance;
    }

    float accumulatedDistance = 0.0f;
    for (size_t i = 1; i < vertices->size(); ++i) {
        float segmentDistance = glm::distance((*vertices)[i - 1], (*vertices)[i]);
        if (accumulatedDistance + segmentDistance >= distanceTraveled) {
            float localT = (distanceTraveled - accumulatedDistance) / segmentDistance;
            glm::vec3 direction = glm::normalize(glm::mix((*vertices)[i - 1], (*vertices)[i], localT) - (*vertices)[i - 1]);

            // Calculer les angles de rotation pour suivre la direction de la route
            float yaw = atan2(direction.z, direction.x);
            float pitch = atan2(direction.y, glm::length(glm::vec2(direction.x, direction.z)));

            return direction;
        }
        accumulatedDistance += segmentDistance;
    }

    // Retourner la direction initiale si une boucle complète est terminée
    glm::vec3 initialPosition = getInitialPosition();
    glm::vec3 direction = glm::normalize(initialPosition - vertices->back());

    // Calculer les angles de rotation pour suivre la direction de la route
    float yaw = atan2(direction.z, direction.x);
    float pitch = atan2(direction.y, glm::length(glm::vec2(direction.x, direction.z)));

    return glm::vec3(pitch, yaw, 0.0f);
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