summary="Library for USB device access"
homepage="https://libusb.info"
url="https://github.com/libusb/libusb/releases/download/v1.0.23/libusb-1.0.23.tar.bz2"
sha256="db11c06e958a82dac52cf3c65cb4dd2c3f339c8a988665110e0d24d19312ad8d"
license="LGPL-2.1"

build() {
    configure \
        --disable-udev \
        --enable-examples-build
}
