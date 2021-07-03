package set summary "Vorbis General Audio Compression Codec"
package set webpage "https://xiph.org/vorbis"
package set src.git "https://github.com/xiph/vorbis.git"
package set src.url "https://github.com/xiph/vorbis/releases/download/v1.3.7/libvorbis-1.3.7.tar.xz"
package set src.sum "b33cc4934322bcbf6efcbacf49e3ca01aadbea4114ec9589d1b1e9d20f72954b"
package set license "BSD-3-Clause"
package set bsystem "configure"
package set dep.pkg "libogg"

prepare() {
    sed_in_place 's/-mno-ieee-fp//g' configure
}
