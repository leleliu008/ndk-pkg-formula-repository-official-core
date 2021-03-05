summary "Common error values for all GnuPG components"
webpage "https://www.gnupg.org/related_software/libgpg-error"
src_url "https://gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.37.tar.bz2"
src_sum "b32d6ff72a73cf79797f7f2d039e95e9c6f92f0c1450215410840ab62aea9763"
bsystem "configure"

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
