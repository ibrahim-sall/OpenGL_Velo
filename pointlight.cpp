#include "pointlight.h"


#include "glm/gtx/transform.hpp"
#include "shader.h"



PointLight::PointLight(glm::vec3 position, glm::vec3  color, float power)
    : position(position), color(color), power(power){
}

PointLight::~PointLight()
{
}

void PointLight::Bind(Shader shader){
    shader.setUniform3fv("POSITION", position);
    shader.setUniform3fv("color", color );
    shader.setUniform1f("power", power);
}