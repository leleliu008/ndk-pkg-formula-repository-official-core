summary="Macro processing language"
homepage="https://www.gnu.org/software/m4"
url="https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.xz"
sha256="f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07"
license="GPL-3.0"

prepare() {
    sed_in_place 's/|| defined __ANDROID__//' lib/freading.c &&
    sed_in_place 's/|| defined __ANDROID__//' lib/stdio-impl.h
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-threads=posix \
        --enable-largefile \
        --enable-c++ \
        --enable-changeword \
        --disable-rpath \
        --disable-nls \
        --disable-assert \
        --disable-gcc-warnings \
        --without-dmalloc \
        --with-included-regex \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
