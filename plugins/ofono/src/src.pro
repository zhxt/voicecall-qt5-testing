TEMPLATE = lib
equals(QT_MAJOR_VERSION, 4): TARGET = voicecall-ofono-plugin
equals(QT_MAJOR_VERSION, 5): TARGET = voicecall-ofono-plugin-qt5

QT = core dbus
CONFIG += plugin link_pkgconfig

#DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
equals(QT_MAJOR_VERSION, 4): LIBS += -L../../../lib/src -lvoicecall
equals(QT_MAJOR_VERSION, 5): LIBS += -L../../../lib/src -lvoicecall-qt5

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

target.path = /usr/lib/voicecall/plugins

INSTALLS += target

