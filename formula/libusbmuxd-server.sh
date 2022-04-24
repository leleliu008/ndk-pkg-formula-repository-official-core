package set summary "A socket daemon to multiplex connections from and to iOS devices."
package set webpage "https://libimobiledevice.org/"
package set git.url "https://github.com/libimobiledevice/usbmuxd.git"
package set src.url "https://github.com/libimobiledevice/usbmuxd/archive/refs/tags/1.1.1.tar.gz"
package set src.sum "e7ce30143e69d77fc5aa6fb0cb5f0cfcdbeff47eb1ac7fd90ac259a90de9fadd"
package set license "LGPL-2.1-or-later;COPYING;https://raw.githubusercontent.com/libimobiledevice/libusbmuxd/master/COPYING"
package set dep.cmd "pkg-config"
package set dep.pkg "libusb libplist"
package set ldflags "-lm -llog"
package set bsystem "autogen"

# int getifaddrs(struct ifaddrs** __list_ptr) __INTRODUCED_IN(24);
# void freeifaddrs(struct ifaddrs* __ptr) __INTRODUCED_IN(24);
package set sdk.api 24

prepare() {
    sed_in_place 's|sbin_PROGRAMS = usbmuxd|lib_LIBRARIES = libusbmuxd-server.a|' src/Makefile.am &&
    sed_in_place 's|usbmuxd_|libusbmuxd_server_a_|' src/Makefile.am &&
    sed_in_place 's|int main(int argc|int usbmuxd(int argc|' src/main.c &&
    sed_in_place 's|/var/run|/data/data/com.cczhr.otglocation/var/run|' src/usbmuxd-proto.h &&
    sed_in_place 's|/var/run|/data/data/com.cczhr.otglocation/var/run|' src/main.c &&
    sed_in_place 's|/var/run|/data/data/com.cczhr.otglocation/var/run|' docs/usbmuxd.8 &&
    sed_in_place 's|/var/run|/data/data/com.cczhr.otglocation/var/run|' udev/39-usbmuxd.rules.in &&
    NOCONFIGURE=yes ./autogen.sh &&
    sed_in_place '/libpthread_LIBS=-lpthread/d' configure
}

build() {
    configure \
        --without-preflight \
        --without-systemd \
        libplist_LIBS="$libplist_LIBRARY_DIR/libplist-2.0.a" \
        libusb_LIBS="$libusb_LIBRARY_DIR/libusb-1.0.a" \
        ac_cv_lib_pthread_pthread_create__pthread_mutex_lock=yes &&
        (
            cd $TARGET_INSTALL_DIR/lib && {
                if [ -f libusbmuxd-server.a ] ; then
                    run $CC -shared -o libusbmuxd-server.so -Wl,--whole-archive libusbmuxd-server.a $libplist_LIBRARY_DIR/libplist-2.0.a $libusb_LIBRARY_DIR/libusb-1.0.a -Wl,--no-whole-archive
                fi
            }
        )
}
