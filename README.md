# HappyBirthday

This is a tiny demo app written in C++ with the purpose of wishing our loved ones birthday.  
This app uses Vulkan as the API. It renders a birthday cake. Currently only uses MinGW Makefiles and windows, but plan to 
making it cross platform.

## Some requirements
 - OS must be windows
 - Must use mingw64 and make to build the project
 - VulkanSDK must be installed in the system with the `VULKAN_SDK` defined in the environment variable
 - GPU driver must support Vulkan 1.0 with compute shader support.

## Libs used
 - ImGui
 - Glfw