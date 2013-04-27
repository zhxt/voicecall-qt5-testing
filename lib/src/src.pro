TEMPLATE = lib
equals(QT_MAJOR_VERSION, 4): TARGET = voicecall
equals(QT_MAJOR_VERSION, 5): TARGET = voicecall-qt5

QT = core dbus
CONFIG += qdbus

#DEFINES += WANT_TRACE

HEADERS += \
    common.h \
    voicecallmanagerinterface.h \
    abstractnotificationprovider.h \
    abstractvoicecallhandler.h \
    abstractvoicecallprovider.h \
    abstractvoicecallmanagerplugin.h \
    dbus/voicecallmanagerdbusadapter.h \
    dbus/voicecallhandlerdbusadapter.h

SOURCES += \
    dbus/voicecallmanagerdbusadapter.cpp \
    dbus/voicecallhandlerdbusadapter.cpp

target.path = /usr/lib

INSTALLS += target

OTHER_FILES +=
