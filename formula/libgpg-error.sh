pkg_set summary "Common error values for all GnuPG components"
pkg_set webpage "https://www.gnupg.org/related_software/libgpg-error"
pkg_set git.url "https://dev.gnupg.org/source/libgpg-error.git"
pkg_set src.url "https://gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.45.tar.bz2"
pkg_set src.sha "570f8ee4fb4bff7b7495cff920c275002aea2147e9a1d220c068213267f80a26"
pkg_set license "LGPL-2.1-or-later|COPYING|https://dev.gnupg.org/source/libgpg-error/browse/master/COPYING"
pkg_set dep.pkg "libbthread"
pkg_set ldflags "-lbthread"
pkg_set ccflags "-include pthread.h -include bthread.h"
pkg_set bsystem "configure"

prepare() {
    cp src/syscfg/lock-obj-pub.arm-unknown-linux-androideabi.h src/syscfg/lock-obj-pub.armv7a-unknown-linux-androideabi.h &&
    cp src/syscfg/lock-obj-pub.aarch64-unknown-linux-gnu.h     src/syscfg/lock-obj-pub.aarch64-unknown-linux-android.h &&
    cp src/syscfg/lock-obj-pub.i686-unknown-linux-gnu.h        src/syscfg/lock-obj-pub.i686-unknown-linux-android.h &&
    cp src/syscfg/lock-obj-pub.x86_64-unknown-linux-gnu.h      src/syscfg/lock-obj-pub.x86_64-unknown-linux-android.h
}

build() {
    configure \
        --disable-build-timestamp \
        --disable-languages \
        --disable-werror \
        --disable-tests \
        --enable-doc \
        --enable-threads=posix
}
