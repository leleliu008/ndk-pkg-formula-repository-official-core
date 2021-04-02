summary "Frontend for libraries libburn and libisofs"
webpage "https://www.libburnia-project.org"
src_url "http://files.libburnia-project.org/releases/libisoburn-1.5.2.tar.gz"
src_sum "cc720bc9511d8e0b09365e2c8b0e40817986be308cd96ca2705c807c955590ec"
license "LGPL-2.1-or-later"
bsystem "configure"
depends "libisofs libburn"

prepare() {
    sed_in_place 's/-lpthread//g' configure
}

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
