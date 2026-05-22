.SILENT:
all: build

DEFINES=-D_DEBUG
INCLUDE=-I$(VULKAN_SDK)/Include -Iinclude
LIBPATH=-L$(VULKAN_SDK)/Lib -Llib
LINKFLAGS=-luser32 -lkernel32 -limgui -lglfw3 -lvulkan-1 -lgdi32
SRC=$(wildcard ./src/*.cpp)

build:
	echo "Compiling ..."
	g++ -std=c++11 -g $(DEFINES) $(INCLUDE) $(LIBPATH) $(SRC) -o main $(LINKFLAGS)
	echo "Done. Generated main.exe"
	
	echo "Compiling shaders ..."
	glslc ./assets/shaders/main.comp -o ./assets/shaders/main.comp.spv
	echo "Done compiling shaders."