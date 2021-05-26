package set summary "Macro processing language"
package set webpage "https://www.gnu.org/software/m4"
package set src.url "https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.xz"
package set src.sum "f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07"
package set license "GPL-3.0"

prepare() {
    sed_in_place 's/|| defined __ANDROID__//' lib/freading.c &&
    sed_in_place 's/|| defined __ANDROID__//' lib/stdio-impl.h
}

build() {
    configure \
        --enable-threads=posix \
        --enable-c++ \
        --enable-changeword \
        --disable-assert \
        --disable-gcc-warnings \
        --without-dmalloc \
        --with-included-regex
}
