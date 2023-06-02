# Minimal WebEngine

### Build using Qt5

1. Set system library path to use Qt5
2. Change `minimal.pro` to use this configuration:
```
# For Qt5
QT += webengine

# For Qt6
#QT += webenginequick
```

3. Change `main.cpp` to use this configuration:
```
// For Qt5
#include <qtwebengineglobal.h>

// For Qt6
//#include <QtWebEngineQuick/qtwebenginequickglobal.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setOrganizationName("QtExamples");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QCoreApplication::setAttribute(Qt::AA_ShareOpenGLContexts);
    // For Qt5
    QtWebEngine::initialize();

    // For Qt6
    //QtWebEngineQuick::initialize();
...
```
4. Run `qmake minimal.pro`
5. Run `make`
6. Run app: `./minimal.app/Contents/MacOS/minimal`

### Build using Qt6

1. Set system library path to use Qt6
2. Change `minimal.pro` to use this configuration:
```
# For Qt5
#QT += webengine

# For Qt6
QT += webenginequick
```

3. Change `main.cpp` to use this configuration:
```
// For Qt5
//#include <qtwebengineglobal.h>

// For Qt6
#include <QtWebEngineQuick/qtwebenginequickglobal.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setOrganizationName("QtExamples");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QCoreApplication::setAttribute(Qt::AA_ShareOpenGLContexts);
    // For Qt5
    //QtWebEngine::initialize();

    // For Qt6
    QtWebEngineQuick::initialize();
...
```
4. Run `qmake minimal.pro`
5. Run `make`
6. Run app: `./minimal.app/Contents/MacOS/minimal`