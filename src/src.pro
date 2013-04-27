include(../qtsingleapplication/src/qtsinglecoreapplication.pri)

equals(QT_MAJOR_VERSION, 4): TARGET = voicecall-manager
equals(QT_MAJOR_VERSION, 5): TARGET = voicecall-manager-qt5
TEMPLATE = app
QT = core dbus
CONFIG += mobility link_pkgconfig

#DEFINES += WANT_TRACE

INCLUDEPATH += ../lib/src
equals(QT_MAJOR_VERSION, 4): LIBS += -L../lib/src -lvoicecall
equals(QT_MAJOR_VERSION, 5): LIBS += -L../lib/src -lvoicecall-qt5

PKGCONFIG += libresourceqt1

CONFIG += qdbus # for dbus plugin.
MOBILITY = multimedia # for basic ringtone plugin.

HEADERS += \
    common.h \
    dbus/voicecallmanagerdbusservice.h \
    basicvoicecallconfigurator.h \
    audiocallpolicyproxy.h \
    voicecallmanager.h \
    basicringtonenotificationprovider.h

SOURCES += \
    dbus/voicecallmanagerdbusservice.cpp \
    basicvoicecallconfigurator.cpp \
    audiocallpolicyproxy.cpp \
    voicecallmanager.cpp \
    main.cpp \
    basicringtonenotificationprovider.cpp

target.path = /usr/bin

INSTALLS += target
