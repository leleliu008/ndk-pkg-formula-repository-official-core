package set summary "Library for USB device access"
package set webpage "https://libusb.info"
package set git.url "https://github.com/libusb/libusb.git"
package set src.url "https://github.com/libusb/libusb/releases/download/v1.0.25/libusb-1.0.25.tar.bz2"
package set src.sum "8a28ef197a797ebac2702f095e81975e2b02b2eeff2774fa909c78a74ef50849"
package set license "LGPL-2.1"
package set bsystem "configure"

build() {
    configure \
        --disable-udev \
        --enable-examples-build
}
