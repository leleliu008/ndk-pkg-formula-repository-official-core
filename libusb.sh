summary "Library for USB device access"
webpage "https://libusb.info"
src_url "https://github.com/libusb/libusb/releases/download/v1.0.23/libusb-1.0.23.tar.bz2"
src_sum "db11c06e958a82dac52cf3c65cb4dd2c3f339c8a988665110e0d24d19312ad8d"
license "LGPL-2.1"
bsystem "configure"

build() {
    configure \
        --disable-udev \
        --enable-examples-build
}
