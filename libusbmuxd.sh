summary  "USB multiplexor library for iOS devices"
homepage "https://www.libimobiledevice.org"
url      "https://github.com/libimobiledevice/libusbmuxd/archive/2.0.2.tar.gz"
sha256   "8ae3e1d9340177f8f3a785be276435869363de79f491d05d8a84a59efc8a8fdc"
license  "LGPL-2.1"
dependencies "libplist"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);

prepare() {
    NOCONFIGURE=yes ./autogen.sh
}

build() {
    configure
}
