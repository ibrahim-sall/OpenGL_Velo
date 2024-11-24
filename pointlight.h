#ifndef POINTLIGHT_H
#define POINTLIGHT_H


#include <iostream>
#include <exception>
#include <string.h>

#include "glm/gtx/transform.hpp"
#include "shader.h"


class PointLight {
    public:
        PointLight(glm::vec3  position, glm::vec3 color, float intensity);
        ~PointLight();
        void Bind(Shader shader);
        void Unbind();
        void SetPower(float power, Shader shader);
    private:
        glm::vec3  position;
        glm::vec3 color;
        float power;

};

#endif