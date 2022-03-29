cmake_minimum_required(VERSION 3.0.0)
project(luau-cli-tool LANGUAGES CXX)

# include(CTest)
# enable_testing()

add_subdirectory(luau)

add_executable(luau-cli-tool main.cpp FileUtils.cpp RequireResolver.cpp extern/json.hpp)

target_compile_features(luau-cli-tool PUBLIC cxx_std_17)

target_include_directories(luau-cli-tool PUBLIC "${PROJECT_BINARY_DIR}" luau/Analysis/include luau/Ast/include luau/VM/include luau/Compiler/include)
target_link_libraries(luau-cli-tool PUBLIC Luau.Ast Luau.Analysis)

# set(CPACK_PROJECT_NAME ${PROJECT_NAME})
# set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
# include(CPack)
