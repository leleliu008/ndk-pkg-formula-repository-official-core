summary  "Vorbis General Audio Compression Codec"
homepage "https://xiph.org/vorbis"
url      "https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.6.tar.xz"
sha256   "af00bb5a784e7c9e69f56823de4637c350643deedaf333d0fa86ecdba6fcb415"
dependencies "libogg"

prepare() {
    sed_in_place 's/-mno-ieee-fp//g' configure
}

build() {
    configure
}
