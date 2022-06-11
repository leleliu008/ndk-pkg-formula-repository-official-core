pkg_set summary "Macro processing language"
pkg_set webpage "https://www.gnu.org/software/m4"
pkg_set src.url "https://ftp.gnu.org/gnu/m4/m4-1.4.19.tar.xz"
pkg_set src.sha "63aede5c6d33b6d9b13511cd0be2cac046f2e70fd0a07aa9573a04a82783af96"
pkg_set git.url "https://git.savannah.gnu.org/git/m4.git"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"

prepare() {
    sed_in_place 's/__DragonFly__/__DragonFly__ || defined __ANDROID__/' lib/freading.c &&
    sed_in_place 's/__DragonFly__/__DragonFly__ || defined __ANDROID__/' lib/stdio-impl.h
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
