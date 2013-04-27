TEMPLATE = lib
TARGET = voicecall-tonegend-plugin

QT = core dbus
CONFIG += plugin link_pkgconfig

DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
LIBS += -L../../../lib/src -lvoicecall-qt5

HEADERS += \
    common.h \
    tonegeneratorplugin.h

SOURCES += \
    tonegeneratorplugin.cpp

DEFINES += PLUGIN_NAME=\\\"voicecall-tonegend-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

equals(QT_MAJOR_VERSION, 4): target.path = /usr/lib/voicecall/plugins
equals(QT_MAJOR_VERSION, 5): target.path = /usr/lib/voicecall-qt5/plugins

INSTALLS += target
