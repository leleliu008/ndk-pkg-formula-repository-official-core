package set summary "Multiple Precision Integers and Rationals (fork of GMP)"
package set webpage "http://mpir.org"
package set src.url "http://mpir.org/mpir-3.0.0.tar.bz2"
package set src.sum "52f63459cf3f9478859de29e00357f004050ead70b45913f2c2269d9708675bb"
package set license "GPL-3.0"
package set bsystem "configure"
package set dep.cmd "yasm"

prepare() {
    sed_in_place '/cat >conftest.c <<EOF/a #include<stdlib.h>' configure
}

build() {
    configure \
        --disable-profiling \
        --disable-assert \
        --disable-fat \
        --enable-cxx \
        --enable-fft \
        --enable-gmpcompat
}
