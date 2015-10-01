# Config.pri file version 2.0. Auto-generated by IDE. Any changes made by user will be lost!
BASEDIR = $$quote($$_PRO_FILE_PWD_)

device {
    CONFIG(debug, debug|release) {
        profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        } else {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }

    }

    CONFIG(release, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

simulator {
    CONFIG(debug, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

config_pri_assets {
    OTHER_FILES += \
        $$quote($$BASEDIR/assets/AboutPage.qml) \
        $$quote($$BASEDIR/assets/ChangelogPage.qml) \
        $$quote($$BASEDIR/assets/FirstPage.qml) \
        $$quote($$BASEDIR/assets/LogItem.qml) \
        $$quote($$BASEDIR/assets/Notification.qml) \
        $$quote($$BASEDIR/assets/PaddingLabel.qml) \
        $$quote($$BASEDIR/assets/SettingsPage.qml) \
        $$quote($$BASEDIR/assets/changelog.png) \
        $$quote($$BASEDIR/assets/ic_save.png) \
        $$quote($$BASEDIR/assets/icon.png) \
        $$quote($$BASEDIR/assets/main.qml)
}

config_pri_source_group1 {
    SOURCES += \
        $$quote($$BASEDIR/src/main_bb10.cpp) \
        $$quote($$BASEDIR/src/server.cpp) \
        $$quote($$BASEDIR/src/settings.cpp) \
        $$quote($$BASEDIR/src/utils.cpp)

    HEADERS += \
        $$quote($$BASEDIR/src/server.h) \
        $$quote($$BASEDIR/src/settings.h) \
        $$quote($$BASEDIR/src/utils.h)
}

CONFIG += precompile_header

PRECOMPILED_HEADER = $$quote($$BASEDIR/precompiled.h)

lupdate_inclusion {
    SOURCES += \
        $$quote($$BASEDIR/../src/*.c) \
        $$quote($$BASEDIR/../src/*.c++) \
        $$quote($$BASEDIR/../src/*.cc) \
        $$quote($$BASEDIR/../src/*.cpp) \
        $$quote($$BASEDIR/../src/*.cxx) \
        $$quote($$BASEDIR/../assets/*.qml) \
        $$quote($$BASEDIR/../assets/*.js) \
        $$quote($$BASEDIR/../assets/*.qs)

    HEADERS += \
        $$quote($$BASEDIR/../src/*.h) \
        $$quote($$BASEDIR/../src/*.h++) \
        $$quote($$BASEDIR/../src/*.hh) \
        $$quote($$BASEDIR/../src/*.hpp) \
        $$quote($$BASEDIR/../src/*.hxx)
}

TRANSLATIONS = $$quote($${TARGET}.ts)
