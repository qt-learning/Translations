cmake_minimum_required(VERSION 3.16)

project(Translations_Section5a VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick LinguistTools)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(${PROJECT_NAME}
    main.cpp
)

qt_add_qml_module(${PROJECT_NAME}
    URI Translations
    VERSION 1.0
    QML_FILES
        Main.qml
)

qt_add_lupdate(
    SOURCE_TARGETS ${PROJECT_NAME}
    TS_FILES i18n/qml_fr.ts i18n/qml_fi.ts
    PLURAL_TS_FILE i18n/qml_en.ts
)

qt_add_lrelease(
    TS_FILES i18n/qml_fr.ts i18n/qml_fi.ts i18n/qml_en.ts
    QM_FILES_OUTPUT_VARIABLE qm_files
)

qt_add_resources(${PROJECT_NAME} "translations"
    PREFIX /qt/qml/Translations/i18n
    BASE ${CMAKE_CURRENT_BINARY_DIR}
    FILES ${qm_files}
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(${PROJECT_NAME} PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.${PROJECT_NAME}
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS ${PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
