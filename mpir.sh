summary "Multiple Precision Integers and Rationals (fork of GMP)"
webpage "http://mpir.org"
src_url "http://mpir.org/mpir-3.0.0.tar.bz2"
src_sum "52f63459cf3f9478859de29e00357f004050ead70b45913f2c2269d9708675bb"
license "GPL-3.0"

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
