pkg_set summary "Library for USB device access"
pkg_set webpage "https://libusb.info"
pkg_set git.url "https://github.com/libusb/libusb.git"
pkg_set src.url "https://github.com/libusb/libusb/releases/download/v1.0.26/libusb-1.0.26.tar.bz2"
pkg_set src.sha "12ce7a61fc9854d1d2a1ffe095f7b5fac19ddba095c259e6067a46500381b5a5"
pkg_set license "LGPL-2.1-or-later;COPYING;https://raw.githubusercontent.com/libusb/libusb/master/COPYING"
pkg_set bsystem "configure"

build() {
    configure \
        --disable-udev \
        --enable-examples-build
}
