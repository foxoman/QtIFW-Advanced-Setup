TEMPLATE = app
QT += widgets

TARGET = Example

# installer
QTIFW_CONFIG = config.xml
# QTIFW_MODE = online_all

sample.pkg = de.skycoder42.qtifwsample
sample.meta = meta
sample.dirs = data
sample.files = ../LICENSE

QTIFW_PACKAGES += sample

# deployment
CONFIG += qtifw_auto_deploy
QTIFW_DEPLOY_TSPRO = $$_PRO_FILE_
QTIFW_AUTO_INSTALL_PKG = sample

# enable the "install" make target
CONFIG += qtifw_install_target

include(../de_skycoder42_qtifw-advanced-setup.pri)

SOURCES += \
	main.cpp

DISTFILES += \
	config.xml \
	meta/package.xml \
	data/main.png \
	example_de.ts

TRANSLATIONS += example_de.ts
