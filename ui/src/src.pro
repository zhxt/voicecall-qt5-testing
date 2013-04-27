include(../../qtsingleapplication/src/qtsingleapplication.pri)

equals(QT_MAJOR_VERSION, 4): TARGET = voicecall-ui
equals(QT_MAJOR_VERSION, 5): TARGET = voicecall-ui-qt5
TEMPLATE = app
QT = core network gui 
equals(QT_MAJOR_VERSION, 4): QT += declarative
equals(QT_MAJOR_VERSION, 5): QT += qml quik

#DEFINES += WANT_TRACE

DEFINES += APPLICATION_NAME=\\\"voicecall-ui\\\"
DEFINES += APPLICATION_VERSION=\\\"0.1.0\\\"
DEFINES += APPLICATION_ORGANISATION=\\\"stage.rubyx.co.uk\\\"
DEFINES += APPLICATION_DOMAIN=\\\"stage.rubyx.co.uk\\\"

HEADERS += \
    common.h \
    declarativeview.h

SOURCES += \
    main.cpp \
    declarativeview.cpp

target.path = /usr/bin

INSTALLS += target
