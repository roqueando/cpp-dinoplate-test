file(GLOB HEADER_LIST
  CONFIGURE_DEPENDS
  "${PROJECT_SOURCE_DIR}/include/**/*.hpp")
file(GLOB SOURCE_LIST
  "${PROJECT_SOURCE_DIR}/src/*.cpp"
  "${PROJECT_SOURCE_DIR}/src/**/*.cpp"
)

add_library(${CPP_DINOPLATE_TEST_LIBRARY_NAME} ${SOURCE_LIST} ${HEADER_LIST})


target_link_libraries (${CPP_DINOPLATE_TEST_LIBRARY_NAME} PUBLIC leaf)
target_include_directories(${CPP_DINOPLATE_TEST_LIBRARY_NAME} PUBLIC ../include)

target_compile_features(${CPP_DINOPLATE_TEST_LIBRARY_NAME} PRIVATE cxx_std_20)
