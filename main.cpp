#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include "vertexbuffer.h"
#include "vertexarray.h"
#include "shader.h"
#include "renderer.h"
#include "camera.h"
#include "navigationcontrols.h"
#include "road.h"
#include "pointlight.h"

using namespace std;

int main()
{
    string path = "/home/ibhou/Documents/OpenGL/OpenGL_API_V6";
/////////////////////////Initialisation de GLFW/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    if(!glfwInit()){
        fprintf(stderr, "Failed to initialize GLFW\n");
        return -1;
    }


    glfwWindowHint(GLFW_SAMPLES, 4); //antialiasing
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3); //version 3.3
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); //version core

    glEnable(GL_CULL_FACE);


/////////////////////////Ouverture de la fenêtre/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //définition de la taille de la fenêtre
    int width=600;
    int height=600;

    //On récupère les dimensions de l'écran pour créer la fenètre
    GLFWmonitor* primary = glfwGetPrimaryMonitor();
    glfwGetMonitorWorkarea(primary,nullptr,nullptr, &width, &height);

    //Enfin on crée la fenêtre
    GLFWwindow* window = glfwCreateWindow(width,height,"OpenGL_API",NULL,NULL);
    glfwSwapInterval(1);
    //On vérifie que l'initialisation a bien marché
    if (window==NULL){
        fprintf(stderr, "Erreur lors de la création de la fénêtre\n");
        glfwTerminate();
        return -1;
    }

    //Enfin on définit la fenêtre créée comme la fenêtre sur laquelle on va dessiner
    glfwMakeContextCurrent(window);



/////////////////////////Initialisation de GLEW/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //Initialisation de GLEW
    glewExperimental=true;
    if (glewInit() != GLEW_OK){
        fprintf(stderr, "Erreur lors de l'initialisation de GLEW\n");
        return -1;
    }

/////////////////////////On crée un Renderer/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Renderer renderer;


/////////////////////////On crée un Shader/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Shader shader(path+"/shaders/SimpleVertexShader.vertexshader", path+"/shaders/SimpleFragmentShader.fragmentshader");
    shader.Bind();

/////////////////////////On crée un vertex array/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    VertexArray va;
    va.Bind();

/////////////////////////On crée la caméra et les contrôles/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Camera cam(width, height);
    NavigationControls controls(window, &cam);

    cam.position = glm::vec3(0.f, 2.f, 5.8491f);
    cam.horizontalAngle = 3.09824f;
    cam.verticalAngle = -0.136719f;

 /////////////////////// Création de la route////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



    Road road = Road(path + "/RoadOBJ/road.obj", path + "/RoadOBJ/road.png");
    road.rotationAngles.x = glm::radians(-90.0f);

//////////////////////// Création du vélo////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    Object o = Object(path + "/BikeOBJ/Bike.obj", path + "/BikeOBJ/Bike.png");
    o.scale = glm::vec3(0.035f, 0.035f, 0.035f);
    
    
    // Création de la matrice MVP
    cam.computeMatrices(width, height);
    
    glm::mat4 m = o.getModelMatrix();
    glm::mat4 v = cam.getViewMatrix();
    glm::mat4 p = cam.getProjectionMatrix();

    glm::mat4 mvp = p*v*m;

    glm::mat3 normalMatrix = glm::transpose(glm::inverse(glm::mat3(m)));

    shader.setUniformMat4f("MVP", mvp);
    shader.setUniformMat4f("model", m);

    glm::mat4 roadModelMatrix = road.getModelMatrix();
    glm::mat4 roadMVP = p * v * roadModelMatrix;

    shader.setUniformMat4f("model", roadModelMatrix);
    shader.setUniformMat4f("MVP", roadMVP);
    
 ///////////////////////// Lumière ambiante////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    PointLight ambiantLight(glm::vec3(1.0f), 0.72f);
    ambiantLight.Bind(shader);

 ///////////////////////// Lumière sur le guidon////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    PointLight pointLight(road.getInitialPosition(), glm::vec3(1.0f, 1.0f, 1.0f), glm::vec3(0.0f, 0.0f, 0.0f), 0.85f);
    pointLight.Bind(shader);

    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);

    glfwSetWindowUserPointer(window, &controls);

    //On indique la couleur de fond
    const glm::vec4 colorlightblue = glm::vec4(0.392f, 0.584f, 0.929f, 1.0f);
    const glm::vec4 colordarkblue = glm::vec4(0.098f, 0.098f, 0.439f, 1.0f);

    glClearColor(colorlightblue[0], colorlightblue[1], colorlightblue[3], colorlightblue[3]);

    //On autorise les tests de profondeur

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);


 ///////////////////////// Variables pour la boucle de rendu////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   
    float distanceTraveled = 0.0f;

    float lastTime = glfwGetTime();
    float currentTime, deltaTime;

    float totalDistance = road.calculateTotalDistance();

    float baseSpeed = totalDistance / 100.0f;

    float roadScale = road.getRoadScale();

    float bikeHeightOffset = 1.6f * o.scale.y;

    size_t currentSegment = 0;
    float accumulatedDistance = 0.0f;

 ///////////////////////// Boucle de rendu ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    while (glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS && !glfwWindowShouldClose(window)) {
        currentTime = glfwGetTime();
        deltaTime = currentTime - lastTime;
        lastTime = currentTime;

        float distanceStep = baseSpeed * deltaTime;

        //On fait avancer le vélo (d'une position sur la route)

        glm::vec3 bikePosition = road.advancePosition(distanceTraveled, distanceStep, currentSegment, accumulatedDistance);

        o.position = bikePosition;

        //On ajoute un offset pour que vélo soit au dessus de la route
        o.position.y += bikeHeightOffset;

        // Impressions de débogage
        static float printTime = 0.0f;
        printTime += deltaTime;
        if (printTime >= 1.0f) {
            // std::cout << "Distance Traveled: " << distanceTraveled << std::endl;
            //std::cout << "Bike Position: (" << bikePosition.x << ", " << bikePosition.y << ", " << bikePosition.z << ")" << std::endl;
            // std::cout << "Direction: (" << direction.x << ", " << direction.y << ", " << direction.z << ")" << std::endl;

            printTime = 0.0f;
        }


        // Contrôle de la caméra

        controls.update(deltaTime, &shader);
        cam.computeMatrices(width, height);

        // Contrôle des lumières et de la couleur de fond
        ambiantLight.SetPower(0.5f + 0.4f * sin(currentTime), shader);

        glClearColor(
            colorlightblue[0] + (colordarkblue[0] - colorlightblue[0]) * (0.5f + 0.5f * sin(-currentTime)),
            colorlightblue[1] + (colordarkblue[1] - colorlightblue[1]) * (0.5f + 0.5f * sin(-currentTime)),
            colorlightblue[2] + (colordarkblue[2] - colorlightblue[2]) * (0.5f + 0.5f * sin(-currentTime)),
            colorlightblue[3]);
        
        m = o.getModelMatrix();
        v = cam.getViewMatrix();
        p = cam.getProjectionMatrix();

        mvp = p*v*m;
        normalMatrix = glm::transpose(glm::inverse(glm::mat3(m)));
        
        roadModelMatrix = road.getModelMatrix();
        roadMVP = p * v * roadModelMatrix;

        ////////////////On commence par vider les buffers///////////////
        renderer.Clear();

        shader.setUniformMat4f("model", m);
        shader.setUniformMat4f("MVP", mvp);
        
        renderer.Draw(va, o, shader);

        shader.setUniformMat4f("model", roadModelMatrix);
        shader.setUniformMat4f("MVP", roadMVP);

        renderer.Draw(va, road, shader);

        shader.Bind();

        ////////////////Partie rafraichissement de l'image et des évènements///////////////
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    shader.Unbind();
    va.Unbind();
    
    glfwTerminate();

    return 0;
}