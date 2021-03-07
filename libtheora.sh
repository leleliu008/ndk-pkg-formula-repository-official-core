summary "Open video compression format"
webpage "https://www.theora.org"
src_url "https://downloads.xiph.org/releases/theora/libtheora-1.1.1.tar.bz2"
src_sum "b6ae1ee2fa3d42ac489287d3ec34c5885730b1296f0801ae577a35193d3affbc"
bsystem "autogen"
depends "libogg libvorbis sdl2"

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
