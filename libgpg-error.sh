package set summary "Common error values for all GnuPG components"
package set webpage "https://www.gnupg.org/related_software/libgpg-error"
package set src.url "https://gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.37.tar.bz2"
package set src.sum "b32d6ff72a73cf79797f7f2d039e95e9c6f92f0c1450215410840ab62aea9763"
package set license "LGPL-2.1-or-later"
package set bsystem "configure"

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
