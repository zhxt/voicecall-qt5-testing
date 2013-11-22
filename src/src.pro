include(../qtsingleapplication/src/qtsinglecoreapplication.pri)

TARGET = voicecall-manager
TEMPLATE = app
QT = core dbus multimedia

CONFIG += mobility link_pkgconfig

#DEFINES += WANT_TRACE

INCLUDEPATH += ../lib/src
equals(QT_MAJOR_VERSION, 4): LIBS += -L../lib/src -lvoicecall
equals(QT_MAJOR_VERSION, 5): LIBS += -L../lib/src -lvoicecall-qt5

equals(QT_MAJOR_VERSION, 4): PKGCONFIG += libresourceqt1
equals(QT_MAJOR_VERSION, 5): PKGCONFIG += libresourceqt5

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
