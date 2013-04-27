TEMPLATE = lib
equals(QT_MAJOR_VERSION, 4): TARGET = voicecall-tonegend-plugin
equals(QT_MAJOR_VERSION, 5): TARGET = voicecall-tonegend-plugin-qt5

QT = core dbus
CONFIG += plugin link_pkgconfig

DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
equals(QT_MAJOR_VERSION, 4): LIBS += -L../../../lib/src -lvoicecall
equals(QT_MAJOR_VERSION, 5): LIBS += -L../../../lib/src -lvoicecall-qt5

HEADERS += \
    common.h \
    tonegeneratorplugin.h

SOURCES += \
    tonegeneratorplugin.cpp

DEFINES += PLUGIN_NAME=\\\"voicecall-tonegend-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

target.path = /usr/lib/voicecall/plugins

INSTALLS += target
