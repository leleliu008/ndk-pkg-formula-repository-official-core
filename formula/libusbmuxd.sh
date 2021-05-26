package set summary "USB multiplexor library for iOS devices"
package set webpage "https://www.libimobiledevice.org"
package set src.git "https://github.com/libimobiledevice/libusbmuxd.git"
package set src.url "https://github.com/libimobiledevice/libusbmuxd/archive/2.0.2.tar.gz"
package set src.sum "8ae3e1d9340177f8f3a785be276435869363de79f491d05d8a84a59efc8a8fdc"
package set license "LGPL-2.1"
package set bsystem "autogen"
package set dep.cmd "pkg-config libtoolize libtool"
package set dep.pkg "libplist"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
package set sdk.api 24
