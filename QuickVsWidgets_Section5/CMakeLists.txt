cmake_minimum_required(VERSION 3.19)
project(QuickVsWidgets_Section5 LANGUAGES CXX)

find_package(Qt6 6.5 REQUIRED COMPONENTS Core Widgets Quick QuickWidgets Graphs)

qt_standard_project_setup()

qt_add_executable(QuickVsWidgets_Section5
    WIN32 MACOSX_BUNDLE
    main.cpp
    mainwindow.cpp
    mainwindow.h
)

qt_add_resources(QuickVsWidgets_Section5 "Resources"
    PREFIX "/"
    FILES
        LineSeries2D.qml
        PieSeries2D.qml
)

target_link_libraries(QuickVsWidgets_Section5
    PRIVATE
        Qt::Core
        Qt::Widgets
        Qt::Quick
        Qt::QuickWidgets
        Qt::Graphs
)

include(GNUInstallDirs)

install(TARGETS QuickVsWidgets_Section5
    BUNDLE  DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

qt_generate_deploy_app_script(
    TARGET QuickVsWidgets_Section5
    OUTPUT_SCRIPT deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
