#include "pointlight.h"


#include "glm/gtx/transform.hpp"
#include "shader.h"



PointLight::PointLight(glm::vec3 position, glm::vec3  color, float power)
    : position(position), color(color), power(power){
}

PointLight::PointLight(glm::vec3 color, float power)
    : color(color), power(power){
    position = glm::vec3(0.0f, 0.0f, 0.0f);
    direction = glm::vec3(0.0f, 0.0f, 0.0f);
}
PointLight::PointLight(glm::vec3 position, glm::vec3 color, glm::vec3 direction, float power)
    : position(position), color(color), direction(direction), power(power){
}

PointLight::~PointLight()
{
}

void PointLight::Bind(Shader shader){
    //pass variables to the shader
    
    if (direction != glm::vec3(0.0f, 0.0f, 0.0f)){
        shader.setUniform3fv("lightposition", position);
        shader.setUniform3fv("colorpoint", color );
        shader.setUniform3fv("direction", direction);
        shader.setUniform1f("powerpoint", power);
    }
    else{
    shader.setUniform3fv("lightposition", position);
    shader.setUniform3fv("color", color );
    shader.setUniform1f("power", power);
    }
}


void PointLight::SetPower(float power, Shader shader){
    this->power = power;
    shader.setUniform1f("power", power);
}
void PointLight::SetPosition(glm::vec3 position){
    this->position = position;
}

void PointLight::SetDirection(glm::vec3 direction){
    this->direction = direction;
}