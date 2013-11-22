TEMPLATE = lib
TARGET = voicecall-ofono-plugin

QT = core dbus
CONFIG += plugin link_pkgconfig

#DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
LIBS += -L../../../lib/src -lvoicecall-qt5

PKGCONFIG += ofono-qt

HEADERS += \
    common.h \
    ofonovoicecallhandler.h  \
    ofonovoicecallprovider.h \
    ofonovoicecallproviderfactory.h

SOURCES += \
    ofonovoicecallhandler.cpp \
    ofonovoicecallprovider.cpp \
    ofonovoicecallproviderfactory.cpp

DEFINES += PLUGIN_NAME=\\\"voicecall-ofono-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

equals(QT_MAJOR_VERSION, 4): target.path = /usr/lib/voicecall/plugins
equals(QT_MAJOR_VERSION, 5): target.path = /usr/lib/voicecall-qt5/plugins

INSTALLS += target

