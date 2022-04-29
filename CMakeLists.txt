cmake_minimum_required(VERSION 3.0.0)
project(luau-analyze-rojo LANGUAGES CXX)

# include(CTest)
# enable_testing()

add_subdirectory(luau)

add_executable(luau-analyze-rojo main.cpp FileUtils.cpp RequireResolver.cpp extern/json.hpp)

target_compile_features(luau-analyze-rojo PUBLIC cxx_std_17)

target_include_directories(luau-analyze-rojo PRIVATE "${PROJECT_BINARY_DIR}" luau/Analysis/include luau/Ast/include luau/VM/include luau/Compiler/include)
target_link_libraries(luau-analyze-rojo PRIVATE Luau.Ast Luau.Analysis)

if(MSVC)
  target_compile_options(luau-analyze-rojo PRIVATE /W3 /WX /D_CRT_SECURE_NO_WARNINGS)
else()
  target_compile_options(luau-analyze-rojo PRIVATE -Wall -Wextra -Wpedantic -Werror)
endif()

# set(CPACK_PROJECT_NAME ${PROJECT_NAME})
# set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
# include(CPack)
