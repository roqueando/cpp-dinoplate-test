cmake_minimum_required(VERSION 3.22)

set(CPP_DINOPLATE_TEST_PROJECT_NAME cpp_dinoplate_test)
set(CPP_DINOPLATE_TEST_SOURCE_DIR src)
set(CPP_DINOPLATE_TEST_PROJECT_VERSION 0.1)
set(CPP_DINOPLATE_TEST_LIBRARY_NAME core)
set(CPP_DINOPLATE_TEST_BINARY_NAME cpp_dinoplate_test)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


include(cmake/UniversalAppleBuild.cmake)

project(
  ${CPP_DINOPLATE_TEST_PROJECT_NAME}
  VERSION ${CPP_DINOPLATE_TEST_PROJECT_VERSION}
  DESCRIPTION "Awesome cpp_dinoplate_test created by roqueando"
  LANGUAGES CXX)

include(cmake/StandardProjectSettings.cmake)

add_executable(${CPP_DINOPLATE_TEST_BINARY_NAME} src/core/ui/app.cpp)
target_link_libraries(${CPP_DINOPLATE_TEST_BINARY_NAME} PUBLIC ${CPP_DINOPLATE_TEST_LIBRARY_NAME})
target_compile_features(${CPP_DINOPLATE_TEST_BINARY_NAME} PRIVATE cxx_std_20)

include(packages/main.cmake)

add_subdirectory(src)

install(TARGETS ${CPP_DINOPLATE_TEST_BINARY_NAME} RUNTIME DESTINATION bin)
include(cmake/packing.cmake)
