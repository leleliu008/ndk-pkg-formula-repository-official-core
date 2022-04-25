pkg_set summary "A socket daemon to multiplex connections from and to iOS devices."
pkg_set webpage "https://libimobiledevice.org/"
pkg_set git.url "https://github.com/libimobiledevice/usbmuxd.git"
pkg_set src.url "https://github.com/libimobiledevice/usbmuxd/archive/refs/tags/1.1.1.tar.gz"
pkg_set src.sha "e7ce30143e69d77fc5aa6fb0cb5f0cfcdbeff47eb1ac7fd90ac259a90de9fadd"
pkg_set license "GPL-3.0-or-later;COPYING.GPLv3;https://raw.githubusercontent.com/libimobiledevice/usbmuxd/master/COPYING.GPLv3"
pkg_set dep.pkg "libusb libplist"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "autogen"
pkg_set ldflags "-lm"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
pkg_set sdk.api 24

prepare() {
    sed_in_place '/pthread/d' configure.ac &&
    sed_in_place 's|/var/run|/data/local/tmp|' src/usbmuxd-proto.h &&
    sed_in_place 's|/var/run|/data/local/tmp|' src/main.c &&
    sed_in_place 's|/var/run|/data/local/tmp|' docs/usbmuxd.8 &&
    sed_in_place 's|/var/run|/data/local/tmp|' udev/39-usbmuxd.rules.in &&
    NOCONFIGURE=yes ./autogen.sh
}


build() {
    configure \
        --without-preflight \
        --without-systemd \
        libplist_LIBS="$libplist_LIBRARY_DIR/libplist-2.0.a" \
        libusb_LIBS="$libusb_LIBRARY_DIR/libusb-1.0.a" \
        ac_cv_lib_pthread_pthread_create__pthread_mutex_lock=yes
}
