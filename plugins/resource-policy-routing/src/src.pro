TEMPLATE = lib
TARGET = voicecall-resource-policy-routing-plugin

QT = core dbus
CONFIG += plugin link_pkgconfig

DEFINES += PLUGIN_NAME=\\\"resource-policy-routing-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

#DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
LIBS += -L../../../lib/src -lvoicecall-qt5

HEADERS += \
    common.h \
    resourcepolicyroutingplugin.h

SOURCES += \
    resourcepolicyroutingplugin.cpp

equals(QT_MAJOR_VERSION, 4): target.path = /usr/lib/voicecall/plugins
equals(QT_MAJOR_VERSION, 5): target.path = /usr/lib/voicecall-qt5/plugins

INSTALLS += target
