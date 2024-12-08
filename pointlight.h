#ifndef POINTLIGHT_H
#define POINTLIGHT_H


#include <iostream>
#include <exception>
#include <string.h>

#include "glm/gtx/transform.hpp"
#include "shader.h"


class PointLight {
    public:
        PointLight(glm::vec3  position, float power);
        PointLight(glm::vec3  position, glm::vec3 color, float power);
        PointLight(glm::vec3 position, glm::vec3 color, glm::vec3 direction, float power);
        ~PointLight();
        void Bind(Shader shader);
        void Unbind();
        void SetPower(float power, Shader shader);
        void SetPosition(glm::vec3 position);
        void SetDirection(glm::vec3 direction);
    private:
        glm::vec3  position;
        glm::vec3 color;
        glm::vec3 direction;
        float power;
};

#endif