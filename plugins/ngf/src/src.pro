TEMPLATE = lib
TARGET = voicecall-ngf-plugin

QT = core
CONFIG += plugin link_pkgconfig

equals(QT_MAJOR_VERSION, 4): PKGCONFIG += ngf-qt
equals(QT_MAJOR_VERSION, 5): PKGCONFIG += ngf-qt5

DEFINES += PLUGIN_NAME=\\\"ngf-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.0.1\\\"

#DEFINES += WANT_TRACE

INCLUDEPATH += ../../../lib/src
LIBS += -L../../../lib/src -lvoicecall-qt5

HEADERS += \
    common.h \
    ngfringtoneplugin.h

SOURCES += \
    ngfringtoneplugin.cpp

equals(QT_MAJJOR_VERSION, 4): target.path = /usr/lib/voicecall/plugins
equals(QT_MAJJOR_VERSION, 5): target.path = /usr/lib/voicecall-qt5/plugins

INSTALLS += target
