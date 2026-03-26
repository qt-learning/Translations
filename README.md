# Translations in Qt

Welcome to the repository for the course "Translations" on Qt Academy.

> Get the full learning experience by enrolling in the course on [Qt Academy](https://www.qt.io/academy/course-catalog?q=#translations)

> You can also find the course playlist on the [Qt YouTube channel](https://www.youtube.com/playlist?list=PLizsthdRd0YzYdLWyOaLwlHwjmON8qSsq)

## 🎯 What You'll Learn

- **How to mark strings for translation** with qsTr() in QML and tr() in C++, including parameters, plural forms, and disambiguation.

- **How to generate and manage translation files** using the lupdate command and Qt Linguist editor.

- **How to load translations into your application** with QTranslator and the QML engine's automatic loading.

- **How to automate the translation workflow** using CMake functions like qt_add_lupdate(), qt_add_lrelease(), and qt_add_translations().

- **How to implement dynamic translations** that switch languages at runtime, including C++-backed QML types.

⭐ **Skill Level**: Intermediate

⏱️ **Time to Complete**: 1 hour 45 minutes

## Getting Started

This course walks you through localizing a Qt Quick application step by step. You'll start with an English-only app and progressively add Finnish and French translations, building up from manually marking strings all the way to fully automated CMake-driven translation pipelines with dynamic language switching.

The repository contains reference projects for each video section:

| Folder                   | Description                                                                            |
| ------------------------ | -------------------------------------------------------------------------------------- |
| `Translations_Section2`  | Starting application — how to mark strings for translations with qsTr()                |
| `Translations_Section3`  | Strings marked with qsTr() — ready for lupdate and Qt Linguist                         |
| `Translations_Section4`  | Translation files created — demonstrates lrelease, QTranslator, and QML engine loading |
| `Translations_Section5a` | CMake automation — qt_add_translations                                                 |
| `Translations_Section5b` | CMake automation — qt_add_lupdate/lrelease                                             |
| `Translations_Section6`  | Dynamic translations — C++-backed QML type with LanguageChange event                   |

Note: The projects are not required to complete the course, but are provided as a reference to help you understand the concepts discussed.

## Prerequisites

Before starting this course, we recommend completing the following courses on Qt Academy:

- **Building with CMake** — foundational knowledge of CMake project configuration
- **QML Integration Basics** — understanding of QML and C++ integration

## Instructions

To get started with this project, you will need to have Qt (6.7.2 or later) and an IDE (e.g., Qt Creator) installed on your computer. You can download Qt and Qt Creator from the [Qt.io website](https://qt.io).

Once you have Qt and an IDE installed, head over to [Qt Academy](https://academy.qt.io) and follow along with the course videos.

To run any project in Qt Creator:

1. Navigate to the project folder
2. Open the `CMakeLists.txt` file
3. Build and run the project

The application displays a simple UI with translatable text, checkboxes with parameterized strings, and language-switching buttons in the footer for English, Finnish, and French.

## Resources

If you need additional help, the following resources may be helpful:

- Qt Documentation - Internationalization with Qt: https://doc.qt.io/qt-6/internationalization.html
- Qt Documentation - Qt Linguist: https://doc.qt.io/qt-6/qtlinguist-index.html
- Qt Forum: https://forum.qt.io
- Qt Academy: https://qt.io/academy

## Licensing Information

```
Copyright (C) 2026 Qt Group.
SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only
```

This is a Translations learning project demonstrating how to create Translations in a Qt based application.

### Terms and Conditions

If you, your employer, or the legal entity you act on behalf of hold commercial license(s) with a Qt Group entity, this software package constitutes Pre-Release Code under the Qt License/Frame Agreement governing those licenses, and that agreement's terms and conditions govern your access and use of this software package.

This software package may provide links or access to third party libraries or code (collectively "Third-Party Software") to implement various functions. Use or distribution of Third-Party Software is discretionary and in all respects subject to applicable license terms of applicable third-party right holders.
