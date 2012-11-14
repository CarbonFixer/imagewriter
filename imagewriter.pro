# #####################################################################
# Automatically generated by qmake (2.01a) Thu Oct 23 14:13:58 2008
# #####################################################################
unix:isEmpty(PREFIX):PREFIX = /usr/local
TEMPLATE = app
TARGET = 
DEPENDPATH += .
INCLUDEPATH += .
VERSION=1.10
DEFINES += APP_VERSION=\\\"$$VERSION\\\" USEUDISKS2

# Input
HEADERS += DeviceItem.h \
    MainWindow.h \
    Platform.h \
    PlatformHal.h \
    PlatformUdisks.h \
    PlatformUdisks2.h \
    udisks2_interface.h \
    udisks2_mountpoints_interface.h \
    MetaTypes.h
SOURCES += main.cpp \
    MainWindow.cpp \
    PlatformHal.cpp \
    PlatformUdisks.cpp \
    Platform.cpp \
    PlatformUdisks2.cpp \
    udisks2_interface.cpp \
    udisks2_mountpoints_interface.cpp

CONFIG += link_pkgconfig \
    qdbus

exists("/usr/include/hal/libhal.h") { 
    PKGCONFIG += hal \
        hal-storage
    DEFINES += USEHAL
}

QMAKE_EXTRA_TARGETS += distfile
DISTFILE_MAKEDIR = .tmp/imagewriter-$$VERSION
DISTFILE_EXTRAFILES = $$RESOURCES \
    COPYING \
    imagewriter.pro \
    README.md \
    INSTALL \
    *.png \
    imagewriter.qrc \
    imagewriter.desktop \
    imagewriter.spec \
    icons/ 

distfile.commands = mkdir \
    -p \
    $$DISTFILE_MAKEDIR \
    && \
    cp \
    -r \
    -f \
    --parent \
    $$SOURCES \
    $$HEADERS \
    $$FORMS \
    $$DISTFILE_EXTRAFILES \
    $$DISTFILE_MAKEDIR \
    && \
    cd \
    .tmp \
    && \
    tar \
    cvzf \
    imagewriter-$$VERSION\.tar.gz \
    imagewriter-$$VERSION \
    && \
    mv \
    imagewriter-$$VERSION\.tar.gz \
    .. \
    && \
    cd \
    ..

imagewriter.path = $$PREFIX/bin
imagewriter.files = imagewriter
INSTALLS += imagewriter \
    icon32 \
    icon64 \
    icon128 \
    desktop
desktop.path = $$PREFIX/share/applications/
desktop.files += imagewriter.desktop
icon32.path = $$PREFIX/share/icons/hicolor/32x32/apps
icon32.files += icons/32x32/imagewriter.png
icon64.path = $$PREFIX/share/icons/hicolor/64x64/apps
icon64.files += icons/64x64/imagewriter.png
icon128.path = $$PREFIX/share/icons/hicolor/128x128/apps
icon128.files += icons/128x128/imagewriter.png
RESOURCES += imagewriter.qrc
