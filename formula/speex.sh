package set summary "Audio codec designed for speech"
package set webpage "https://speex.org"
package set src.url "https://downloads.xiph.org/releases/speex/speex-1.2.0.tar.gz"
package set src.sum "eaae8af0ac742dc7d542c9439ac72f1f385ce838392dc849cae4536af9210094"
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
