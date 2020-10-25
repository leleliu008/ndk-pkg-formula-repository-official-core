summary="GNU multiple precision arithmetic library"
homepage="https://gmplib.org"
url="https://gmplib.org/download/gmp/gmp-6.2.0.tar.xz"
sha256="258e6cd51b3fbdfc185c716d55f82c08aff57df0c6fbd143cf6ed561267a1526"

build() {
    configure \
        --without-readline \
        --disable-profiling \
        --disable-assert \
        --disable-cxx \
        --enable-fft \
        --enable-assembly
}
