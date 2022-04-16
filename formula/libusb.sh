package set summary "Library for USB device access"
package set webpage "https://libusb.info"
package set git.url "https://github.com/libusb/libusb.git"
package set src.url "https://github.com/libusb/libusb/releases/download/v1.0.26/libusb-1.0.26.tar.bz2"
package set src.sum "12ce7a61fc9854d1d2a1ffe095f7b5fac19ddba095c259e6067a46500381b5a5"
package set license "LGPL-2.1"
package set bsystem "configure"

build() {
    configure \
        --disable-udev \
        --enable-examples-build
}
