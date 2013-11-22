include(../../qtsingleapplication/src/qtsingleapplication.pri)

TARGET = voicecall-ui
TEMPLATE = app
QT = core network gui 
equals(QT_MAJOR_VERSION, 4): QT += declarative
equals(QT_MAJOR_VERSION, 5): QT += qml quick

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
