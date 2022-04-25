pkg_set summary "Open video compression format"
pkg_set webpage "https://www.theora.org"
pkg_set git.url "https://github.com/xiph/theora.git"
pkg_set src.url "https://github.com/xiph/theora/archive/refs/tags/v1.1.1.tar.gz"
pkg_set src.sha "1d5c3b25bbced448f3e741c42df6796e3d5e57136a74bcd68262318290ec2982"
pkg_set license "BSD-3-Clause;COPYING;https://raw.githubusercontent.com/xiph/theora/master/COPYING"
pkg_set dep.pkg "libogg libvorbis sdl2"
pkg_set bsystem "autogen"

prepare() {
    sed_in_place '$d' autogen.sh && ./autogen.sh
}

build() {
    configure \
        --with-ogg="$libogg_INSTALL_DIR" \
        --with-vorbis="$libvorbis_INSTALL_DIR" \
        --with-sdl-prefix="$sdl2_INSTALL_DIR" \
        --disable-examples
}
