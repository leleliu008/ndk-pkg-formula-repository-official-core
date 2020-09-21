summary="Library for handling page faults in user mode"
homepage="https://www.gnu.org/software/libsigsegv"
url="https://ftp.gnu.org/gnu/libsigsegv/libsigsegv-2.12.tar.gz"
sha256="3ae1af359eebaa4ffc5896a1aee3568c052c99879316a1ab57f8fe1789c390b6"
license="GPL-2.0"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-static \
        --enable-shared \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
