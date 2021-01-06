summary "Library to communicate with iOS devices natively"
webpage "https://www.libimobiledevice.org"
src_url "https://github.com/libimobiledevice/libimobiledevice/releases/download/1.3.0/libimobiledevice-1.3.0.tar.bz2"
src_sum "53f2640c6365cd9f302a6248f531822dc94a6cced3f17128d4479a77bd75b0f6"
license "LGPL-2.1"
depends "openssl libusbmuxd"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
sdk_api 24

prepare() {
    sed_in_place 's/@echo/echo/g' common/Makefile.in &&
    sed_in_place 's/@echo/echo/g' tools/Makefile.in &&
    sed_in_place 's/@echo/echo/g' src/Makefile.in &&
    sed_in_place 's/-lpthread//g' configure
}

build() {
    configure --without-cython
}
