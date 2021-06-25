# Copyright (c) 2021 YuvarajVelumani82
cmake_minimum_required(VERSION 3.5)

project(sampleqtgui)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
#set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR}/staging)
#set(CMAKE_VERBOSE_MAKEFILE false)

add_executable(${PROJECT_NAME}
    main.cpp
    qml.qrc
    main.qml
    BottomMenu.qml
    CenterMenu.qml
    TopMenu.qml
    ValueSource.qml
)

find_package(Qt5Core)
find_package(Qt5Gui)
find_package(Qt5Qml)
find_package(Qt5Quick)
find_package(Qt5Multimedia)
find_package(Qt5::QGifPlugin)
find_package(Qt5::QJpegPlugin)

target_link_libraries(${PROJECT_NAME}
    Qt5::Core Qt5::Gui Qt5::Qml Qt5::Quick Qt5::Multimedia
)

qt_import_plugins(${PROJECT_NAME
    INCLUDE_BY_TYPE imageformats Qt5::QGifPlugin Qt5::QJpegPlugin
) 

install(
  TARGETS ${PROJECT_NAME}
  RUNTIME
    DESTINATION bin
    COMPONENT runtime
)
