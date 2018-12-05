#pragma once
namespace feh {
#include <string>
static const std::string basic_mvp_vert = R"(
// Basic model-view-projection vertex shader.
// Given the 3D position of a point, apply the projection, view and model transformations sequentially.
#version 430 core
layout (location = 0) in vec3 position;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
void main()
{
    gl_Position = projection * view * model * vec4(position, 1.0f);
}

)";
}