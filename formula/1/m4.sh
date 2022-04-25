pkg_set summary "Macro processing language"
pkg_set webpage "https://www.gnu.org/software/m4"
pkg_set src.url "https://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.xz"
pkg_set src.sha "f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07"
pkg_set license "GPL-3.0-or-later"

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
