TEMPLATE = lib
TARGET = voicecall-pulseaudio-plugin

QT = core
CONFIG += plugin link_pkgconfig

DEFINES += PLUGIN_NAME=\\\"voicecall-pulseaudio-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

#DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
LIBS += -L../../../lib/src -lvoicecall-qt5

PKGCONFIG += libpulse-mainloop-glib

HEADERS += \
    common.h \
    pacontrol.h \
    pulseaudioroutingplugin.h

SOURCES += \
    pacontrol.cpp \
    pulseaudioroutingplugin.cpp

equals(QT_MAJOR_VERSION, 4): target.path = /usr/lib/voicecall/plugins
equals(QT_MAJOR_VERSION, 5): target.path = /usr/lib/voicecall-qt5/plugins

INSTALLS += target
