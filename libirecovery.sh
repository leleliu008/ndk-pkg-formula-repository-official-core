summary="Library and utility to talk to iBoot/iBSS via USB"
homepage="https://www.libimobiledevice.org"
url="https://github.com/libimobiledevice/libirecovery/releases/download/1.0.0/libirecovery-1.0.0.tar.bz2"
sha256="cda0aba10a5b6fc2e1d83946b009e3e64d0be36912a986e35ad6d34b504ad9b4"
license="LGPL-2.1-only"
dependencies="libusb readline"

build() {
    export LDFLAGS="$LDFLAGS -lncurses"
    configure
}
