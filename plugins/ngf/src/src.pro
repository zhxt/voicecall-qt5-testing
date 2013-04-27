TEMPLATE = lib
equals(QT_MAJOR_VERSION, 4): TARGET = voicecall-ngf-plugin
equals(QT_MAJOR_VERSION, 5): TARGET = voicecall-ngf-plugin-qt5

QT = core
CONFIG += plugin link_pkgconfig

equals(QT_MAJOR_VERSION, 4): PKGCONFIG += ngf-qt
equals(QT_MAJOR_VERSION, 5): PKGCONFIG += ngf-qt-qt5

DEFINES += PLUGIN_NAME=\\\"ngf-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

#DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
equals(QT_MAJOR_VERSION, 4): LIBS += -L../../../lib/src -lvoicecall
equals(QT_MAJOR_VERSION, 5): LIBS += -L../../../lib/src -lvoicecall-qt5

HEADERS += \
    common.h \
    ngfringtoneplugin.h

SOURCES += \
    ngfringtoneplugin.cpp

target.path = /usr/lib/voicecall/plugins

INSTALLS += target
