package set summary "GNU multiple precision arithmetic library"
package set webpage "https://gmplib.org"
package set src.url "https://gmplib.org/download/gmp/gmp-6.2.1.tar.xz"
package set src.sum "fd4829912cddd12f84181c3451cc752be224643e87fac497b69edddadc49b4f2"
package set dep.cmd "m4"
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
