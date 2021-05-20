package set summary "GNU multiple precision arithmetic library"
package set webpage "https://gmplib.org"
package set src.url "https://gmplib.org/download/gmp/gmp-6.2.0.tar.xz"
package set src.sum "258e6cd51b3fbdfc185c716d55f82c08aff57df0c6fbd143cf6ed561267a1526"
package set bsystem "configure"

build() {
    configure \
        --without-readline \
        --disable-profiling \
        --disable-assert \
        --disable-cxx \
        --enable-assembly \
        --enable-fft
}
