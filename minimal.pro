TEMPLATE = app

# For Qt5
QT += webengine

# For Qt6
#QT += webenginequick

SOURCES += main.cpp

RESOURCES += qml.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/webengine/minimal
INSTALLS += target
