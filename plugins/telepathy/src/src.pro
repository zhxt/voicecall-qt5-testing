TEMPLATE = lib
equals(QT_MAJOR_VERSION, 4): TARGET = voicecall-telepathy-plugin
equals(QT_MAJOR_VERSION, 5): TARGET = voicecall-telepathy-plugin-qt5

QT = core
CONFIG += plugin link_pkgconfig

INCLUDEPATH += ../../../lib/src
equals(QT_MAJOR_VERSION, 4): LIBS += -L../../../lib/src -lvoicecall
equals(QT_MAJOR_VERSION, 5): LIBS += -L../../../lib/src -lvoicecall-qt5

PKGCONFIG += TelepathyQt4 TelepathyQt4Farstream

#DEFINES += WANT_TRACE

HEADERS += \
    common.h \
    telepathyproviderplugin.h \
    telepathyprovider.h \
    telepathyhandler.h \
    farstreamchannel.h

SOURCES += \
    telepathyproviderplugin.cpp \
    telepathyprovider.cpp \
    telepathyhandler.cpp \
    farstreamchannel.cpp

DEFINES += PLUGIN_NAME=\\\"voicecall-telepathy-plugin\\\"
DEFINES += PLUGIN_VERSION=\\\"0.0.1.0\\\"

target.path = /usr/lib/voicecall/plugins

INSTALLS += target
