pkg_set summary "Frontend for libraries libburn and libisofs"
pkg_set webpage "https://www.libburnia-project.org"
pkg_set src.url "http://files.libburnia-project.org/releases/libisoburn-1.5.2.tar.gz"
pkg_set src.sha "cc720bc9511d8e0b09365e2c8b0e40817986be308cd96ca2705c807c955590ec"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.pkg "libisofs libburn liblanginfo"
pkg_set bsystem "configure"

build() {
    configure \
        --enable-xattr \
        --enable-zlib \
        --disable-libcdio \
        --disable-libjte \
        --disable-libacl \
        --disable-libedit \
        --disable-libreadline
}
