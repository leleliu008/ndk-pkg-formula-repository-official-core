pkg_set summary "Audio codec designed for speech"
pkg_set webpage "https://speex.org"
pkg_set git.url "https://github.com/xiph/speex.git"
pkg_set src.url "https://github.com/xiph/speex/archive/refs/tags/Speex-1.2.0.tar.gz"
pkg_set src.sha "4781a30d3a501abc59a4266f9bbf8b1da66fd509bef014697dc3f61e406b990c"
pkg_set license "BSD-3-Clause;COPYING;https://raw.githubusercontent.com/xiph/speex/master/COPYING"
pkg_set dep.pkg "libogg speexdsp"
pkg_set bsystem "autogen"
pkg_set ldflags "-lm"

build() {
    configure \
        OGG_CFLAGS="-logg" \
        OGG_LIBS="-logg" \
        SPEEXDSP_CFLAGS="-lspeexdsp" \
        SPEEXDSP_LIBS="-lspeexdsp"
}
