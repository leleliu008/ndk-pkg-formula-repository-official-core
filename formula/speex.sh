package set summary "Audio codec designed for speech"
package set webpage "https://speex.org"
package set src.git "https://github.com/xiph/speex.git"
package set src.url "https://github.com/xiph/speex/archive/refs/tags/Speex-1.2.0.tar.gz"
package set src.sum "4781a30d3a501abc59a4266f9bbf8b1da66fd509bef014697dc3f61e406b990c"
package set bsystem "configure"
package set dep.pkg "libogg speexdsp"
package set ldflags "-lm"

build() {
    configure \
        OGG_CFLAGS="-logg" \
        OGG_LIBS="-logg" \
        SPEEXDSP_CFLAGS="-lspeexdsp" \
        SPEEXDSP_LIBS="-lspeexdsp"
}
