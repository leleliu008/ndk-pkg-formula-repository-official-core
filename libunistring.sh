summary="C string library for manipulating Unicode strings"
homepage="https://www.gnu.org/software/libunistring"
url="https://ftp.gnu.org/gnu/libunistring/libunistring-0.9.10.tar.xz"
sha256="eb8fb2c3e4b6e2d336608377050892b54c3c983b646c561836550863003c05d7"
dependencies="libiconv"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --with-libiconv-prefix="$libiconv_DIR_INSTALL_PREFIX" \
        --disable-rpath \
        --enable-static \
        --enable-shared \
        --enable-threads=posix \
        --enable-relocatable \
        --enable-namespacing \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
