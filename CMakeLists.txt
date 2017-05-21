cmake_minimum_required(VERSION 3.8)
project(vkcube C)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

file(GLOB SOURCE_FILES *.c *.h)
add_executable(vkcube ${SOURCE_FILES})

find_package(Vulkan REQUIRED)
find_package(Wayland REQUIRED)
find_package(DRM REQUIRED)
find_package(GBM REQUIRED)
find_package(PNG REQUIRED)
find_package(XCB REQUIRED)

target_include_directories(vkcube PRIVATE PNG::PNG ${WAYLAND_INCLUDE_DIR} ${DRM_INCLUDE_DIR} ${GBM_INCLUDE_DIR} ${XCB_INCLUDE_DIR})
target_link_libraries(vkcube PRIVATE m PNG::PNG Vulkan::Vulkan ${WAYLAND_LIBRARIES} ${DRM_LIBRARY} ${GBM_LIBRARY} ${XCB_LIBRARIES})

if (CMAKE_COMPILER_IS_GNUCC)
    add_definitions(-Wall -Wextra -Werror=implicit-function-declaration -Werror=missing-prototypes)
elseif (MSVC)
    add_definitions(/W4)
endif()
