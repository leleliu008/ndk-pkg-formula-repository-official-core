pkg_set summary "GNU multiple precision arithmetic library"
pkg_set webpage "https://gmplib.org"
pkg_set src.url "https://gmplib.org/download/gmp/gmp-6.2.1.tar.xz"
pkg_set src.sha "fd4829912cddd12f84181c3451cc752be224643e87fac497b69edddadc49b4f2"
pkg_set license "LGPL-3.0-or-later"
pkg_set dep.cmd "m4"
pkg_set bsystem "configure"

build() {
    configure \
        --without-readline \
        --disable-profiling \
        --disable-assert \
        --disable-cxx \
        --enable-assembly \
        --enable-fft
}
