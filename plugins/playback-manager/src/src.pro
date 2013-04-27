TEMPLATE = lib
TARGET = voicecall-playback-manager-plugin

QT = core dbus
CONFIG += plugin

DEFINES += PLUGIN_NAME=\\\"voicecall-playback-manager-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

#DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
LIBS += -L../../../lib/src -lvoicecall-qt5

HEADERS += \
    common.h \
    playbackmanagerplugin.h

SOURCES += \
    playbackmanagerplugin.cpp

equals(QT_MAJOR_VERSION, 4): target.path = /usr/lib/voicecall/plugins
equals(QT_MAJOR_VERSION, 5): target.path = /usr/lib/voicecall-qt5/plugins

INSTALLS += target
