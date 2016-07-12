TEMPLATE = app
TARGET = htmlToXBel

DEPENDPATH += $$PWD
INCLUDEPATH += $$PWD

win32|os2: CONFIG += console
mac:CONFIG -= app_bundle

QT += network webkitwidgets widgets

# Input
SOURCES += main.cpp

RESOURCES += source.qrc

include(../../install.pri)
include(../../webkittrunk.pri)

!mac {
unix {
    INSTALLS += man man-compress

    man.path = $$DATADIR/man/man1
    man.files += data/htmlToXBel.1

    man-compress.path = $$DATADIR/man/man1
    man-compress.extra = "" "gzip -9 -f \$(INSTALL_ROOT)/$$DATADIR/man/man1/htmlToXBel.1" ""
    man-compress.depends = install_man
}
}
