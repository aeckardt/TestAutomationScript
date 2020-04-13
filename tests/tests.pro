include(gtest_dependency.pri)

TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG += thread
CONFIG += sdk_no_version_check

HEADERS += \
    createimage.h \
    ../video/decoder.h \ # for moc creation
    test_image.h \
    test_script.h \
    test_video.h

SOURCES += \
    createimage.cpp \
    main.cpp \
    ../script/astwalker.cpp \
    ../script/lexer.cpp \
    ../script/parameter.cpp \
    ../script/parser.cpp \
    ../image/image.cpp \
    ../video/decoder.cpp \
    ../video/encoder.cpp

INCLUDEPATH += \
    $$PWD/.. \
    /usr/local/include

LIBS += \
    -L/usr/local/lib \
    -lavcodec \
    -lavformat \
    -lavutil \
    -lswscale
