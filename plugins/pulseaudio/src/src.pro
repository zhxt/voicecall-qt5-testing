TEMPLATE = lib
equals(QT_MAJOR_VERSION, 4): TARGET = voicecall-pulseaudio-plugin
equals(QT_MAJOR_VERSION, 5): TARGET = voicecall-pulseaudio-plugin-qt5

QT = core
CONFIG += plugin link_pkgconfig

DEFINES += PLUGIN_NAME=\\\"voicecall-pulseaudio-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

#DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
equals(QT_MAJOR_VERSION, 4): LIBS += -L../../../lib/src -lvoicecall
equals(QT_MAJOR_VERSION, 5): LIBS += -L../../../lib/src -lvoicecall-qt5

PKGCONFIG += libpulse-mainloop-glib

HEADERS += \
    common.h \
    pacontrol.h \
    pulseaudioroutingplugin.h

SOURCES += \
    pacontrol.cpp \
    pulseaudioroutingplugin.cpp

target.path = /usr/lib/voicecall/plugins

INSTALLS += target
