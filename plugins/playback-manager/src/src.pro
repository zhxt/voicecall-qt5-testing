TEMPLATE = lib
equals(QT_MAJOR_VERSION, 4): TARGET = voicecall-playback-manager-plugin
equals(QT_MAJOR_VERSION, 5): TARGET = voicecall-playback-manager-plugin-qt5

QT = core dbus
CONFIG += plugin

DEFINES += PLUGIN_NAME=\\\"voicecall-playback-manager-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

#DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
equals(QT_MAJOR_VERSION, 4): LIBS += -L../../../lib/src -lvoicecall
equals(QT_MAJOR_VERSION, 5): LIBS += -L../../../lib/src -lvoicecall-qt5

HEADERS += \
    common.h \
    playbackmanagerplugin.h

SOURCES += \
    playbackmanagerplugin.cpp

target.path = /usr/lib/voicecall/plugins

INSTALLS += target
