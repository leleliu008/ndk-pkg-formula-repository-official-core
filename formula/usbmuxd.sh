package set summary "A socket daemon to multiplex connections from and to iOS devices."
package set webpage "https://libimobiledevice.org/"
package set src.git "https://github.com/libimobiledevice/usbmuxd.git"
package set src.url "https://github.com/libimobiledevice/usbmuxd/archive/refs/tags/1.1.1.tar.gz"
package set src.sum "e7ce30143e69d77fc5aa6fb0cb5f0cfcdbeff47eb1ac7fd90ac259a90de9fadd"
package set dep.cmd "pkg-config"
package set dep.pkg "libusb libplist"
package set bsystem "autogen"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
package set sdk.api 24

prepare() {
    sed_in_place '/pthread/d' configure.ac &&
    NOCONFIGURE=yes ./autogen.sh
}

build() {
    configure \
        --without-preflight \
        --without-systemd \
        ac_cv_func_malloc_0_nonnull=yes \
        ac_cv_func_realloc_0_nonnull=yes
}
