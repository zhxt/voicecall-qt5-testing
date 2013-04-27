TEMPLATE = lib
equals(QT_MAJOR_VERSION, 4): TARGET = voicecall-resource-policy-routing-plugin
equals(QT_MAJOR_VERSION, 5): TARGET = voicecall-resource-policy-routing-plugin-qt5

QT = core dbus
CONFIG += plugin link_pkgconfig

DEFINES += PLUGIN_NAME=\\\"resource-policy-routing-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

#DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
equals(QT_MAJOR_VERSION, 4): LIBS += -L../../../lib/src -lvoicecall
equals(QT_MAJOR_VERSION, 5): LIBS += -L../../../lib/src -lvoicecall-qt5

HEADERS += \
    common.h \
    resourcepolicyroutingplugin.h

SOURCES += \
    resourcepolicyroutingplugin.cpp

target.path = /usr/lib/voicecall/plugins

INSTALLS += target
