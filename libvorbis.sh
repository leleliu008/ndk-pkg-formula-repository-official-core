summary "Vorbis General Audio Compression Codec"
webpage "https://xiph.org/vorbis"
src_url "https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.6.tar.xz"
src_sum "af00bb5a784e7c9e69f56823de4637c350643deedaf333d0fa86ecdba6fcb415"
bsystem "configure"
depends "libogg"

prepare() {
    sed_in_place 's/-mno-ieee-fp//g' configure
}
