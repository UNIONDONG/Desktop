# cmake版本 
CMAKE_MINIMUM_REQUIRED(VERSION 3.10)

# 交叉编译方式
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR arm)
SET(PREFIX "arm-linux-gnueabihf-")
# 指定C交叉编译器
SET(CMAKE_C_COMPILER ${PREFIX}gcc)

# 指定C++交叉编译器
SET(CMAKE_CXX_COMPILER ${PREFIX}g++)

# 指定AR、RANLIB命令
set(CMAKE_AR ${PREFIX}ar)
set(CMAKE_RANLIB ${PREFIX}ranlib)

# 指定strip命令
SET(CMAKE_STRIP ${PREFIX}strip)
SET(CMAKE_EXPORT_COMPILE_COMMANDS ON) 
# 项目的名称
PROJECT(desktop_focus)

# 根据APP类型确定编译代码目录、宏定义以及编译选项
# ADD_DEFINITIONS(-DAPP_TUYA)
# 添加头文件
INCLUDE_DIRECTORIES(./include)
INCLUDE_DIRECTORIES(./lib/Fonts ./lib/GUI)
# 添加源文件
AUX_SOURCE_DIRECTORY(./src/ DIR_SRCS)
AUX_SOURCE_DIRECTORY(./lib/Fonts DIR_SRCS)
AUX_SOURCE_DIRECTORY(./lib/GUI DIR_SRCS)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON) 
# LINK_DIRECTORIES(./src/tuya/libs ./src/libs ./src/debug ./src/bluetooth/bluez/lib)
# LINK_LIBRARIES(tuya_iot robot_api ulog bluez)


# 编译选项
IF (CMAKE_BUILD_TYPE STREQUAL Debug)
    SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O1 -g -pthread -fsanitize=address -fno-omit-frame-pointer -g")
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O1 -g -fsanitize=address -fno-omit-frame-pointer -g")
    SET(LINK_FLAGS    "-fsanitize=address")
ELSEIF (CMAKE_BUILD_TYPE STREQUAL Release)
    SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Os -s -pthread")
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Os -s")
ELSE ()
    SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Os -s -pthread")
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Os -s")
ENDIF()

# 链接目标
ADD_EXECUTABLE(${PROJECT_NAME} ${DIR_SRCS})

