package set summary "Library for USB device access"
package set webpage "https://libusb.info"
package set src.url "https://github.com/libusb/libusb/releases/download/v1.0.24/libusb-1.0.24.tar.bz2"
package set src.sum "7efd2685f7b327326dcfb85cee426d9b871fd70e22caa15bb68d595ce2a2b12a"
package set license "LGPL-2.1"
package set bsystem "configure"

build() {
    configure \
        --disable-udev \
        --enable-examples-build
}
