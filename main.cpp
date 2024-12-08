#include <iostream>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include "glm/glm.hpp"
#include <vector>

#include "vertexbuffer.h"
#include "vertexarray.h"
#include "shader.h"
#include "renderer.h"
#include "camera.h"
#include "navigationcontrols.h"
#include "velo.h"
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

    // Cull triangles which normal is not towards the camera
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

/////////////////////////On crée la camera et les contrôles/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Camera cam(width, height);
    NavigationControls controls(window, &cam);

/////////////////////////Création des formes à afficher/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Object o = Object(path + "/BikeOBJ/Bike.obj", path + "/BikeOBJ/Bike.png");
/////////////////////////Création de la matrice MVP/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    
    cam.computeMatrices(width, height);
    glm::mat4 m = o.getModelMatrix();
    glm::mat4 v = cam.getViewMatrix();
    glm::mat4 p = cam.getProjectionMatrix();

    glm::mat4 mvp = p*v*m;

    glm::mat3 normalMatrix = glm::transpose(glm::inverse(glm::mat3(m)));

    shader.setUniformMat4f("MVP", mvp);
    //shader.setUniformMat4f("Normal", normalMatrix);


/////////////////////////Lumière ambiante/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    PointLight ambiantLight(glm::vec3(1.0f, 1.0f, 1.0f), 0.72f);
    ambiantLight.Bind(shader);

/////////////////////////Lumière sur le guidon/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    PointLight pointLight(o.getHandlebarPosition(), glm::vec3(1.0f, 1.0f, 1.0f), glm::vec3(0.0f, 0.0f, 0.0f), 0.85f);
    pointLight.Bind(shader);

/////////////////////////Boucle de rendu/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //Lumière
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);

    // Assure que l'on peut capturer les touche de clavier
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);

    //On indique la couleur de fond
    const glm::vec4 colorlightblue = glm::vec4(0.392f, 0.584f, 0.929f, 1.0f);
    const glm::vec4 colordarkblue = glm::vec4(0.098f, 0.098f, 0.439f, 1.0f);

    glClearColor(colorlightblue[0], colorlightblue[1], colorlightblue[3], colorlightblue[3]);

    //On autorise les tests de profondeur

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);


    float lastTime = glfwGetTime();
    float currentTime, deltaTime;


    while(glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS && !glfwWindowShouldClose(window)){
        currentTime = glfwGetTime();
        deltaTime = currentTime-lastTime;
        lastTime = currentTime;

        o.rotationAngles.y = currentTime;
        o.position.x = -5.0f * sin(currentTime);
        o.position.z = -5.0f * cos(currentTime);

        controls.update(deltaTime, &shader);
        cam.computeMatrices(width, height);

        ambiantLight.SetPower(0.5f + 0.4f * sin(currentTime), shader);

        //pointLight.SetDirection(glm::vec3(o.rotationAngles.x, o.rotationAngles.y, o.rotationAngles.z));
        //pointLight.SetPosition(o.getHandlebarPosition());

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


        shader.setUniformMat4f("model", m);
        shader.setUniformMat4f("MVP", mvp);

        ////////////////On commence par vider les buffers///////////////
        renderer.Clear();
        renderer.Draw(va, o, shader);


        ////////////////Partie rafraichissement de l'image et des évènements///////////////
        //Swap buffers : frame refresh
        glfwSwapBuffers(window);
        //get the events
        glfwPollEvents();
    }
    glfwTerminate();

    return 0;
}
