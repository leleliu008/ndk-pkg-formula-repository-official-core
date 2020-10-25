summary="Multiple Precision Integers and Rationals (fork of GMP)"
homepage="http://mpir.org"
url="http://mpir.org/mpir-3.0.0.tar.bz2"
sha256="52f63459cf3f9478859de29e00357f004050ead70b45913f2c2269d9708675bb"
license="GPL-3.0"

build() {
    configure \
        --disable-profiling \
        --disable-assert \
        --disable-fat \
        --enable-cxx \
        --enable-fft \
        --enable-gmpcompat
}
