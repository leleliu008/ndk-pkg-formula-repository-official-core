pkg_set summary "Vorbis General Audio Compression Codec"
pkg_set webpage "https://xiph.org/vorbis"
pkg_set git.url "https://github.com/xiph/vorbis.git"
pkg_set src.url "https://github.com/xiph/vorbis/releases/download/v1.3.7/libvorbis-1.3.7.tar.xz"
pkg_set src.sha "b33cc4934322bcbf6efcbacf49e3ca01aadbea4114ec9589d1b1e9d20f72954b"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "configure"
pkg_set dep.pkg "libogg"

prepare() {
    sed_in_place 's/-mno-ieee-fp//g' configure
}
