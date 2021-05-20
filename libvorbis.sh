package set summary "Vorbis General Audio Compression Codec"
package set webpage "https://xiph.org/vorbis"
package set src.url "https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.6.tar.xz"
package set src.sum "af00bb5a784e7c9e69f56823de4637c350643deedaf333d0fa86ecdba6fcb415"
package set license "BSD-3-Clause"
package set bsystem "configure"
package set dep.pkg "libogg"

prepare() {
    sed_in_place 's/-mno-ieee-fp//g' configure
}
