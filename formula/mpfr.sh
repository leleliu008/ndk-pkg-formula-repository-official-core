pkg_set summary "C library for multiple-precision floating-point computations"
pkg_set webpage "https://www.mpfr.org"
pkg_set git.url "https://gitlab.inria.fr/mpfr/mpfr.git"
pkg_set src.url "https://ftp.gnu.org/gnu/mpfr/mpfr-4.1.0.tar.xz"
pkg_set src.sha "0c98a3f1732ff6ca4ea690552079da9c597872d30e96ec28414ee23c95558a7f"
pkg_set license "LGPL-3.0-or-later"
pkg_set dep.pkg "gmp"
pkg_set bsystem "configure"

build() {
    configure \
        --with-gmp="$gmp_INSTALL_DIR" \
        --disable-logging \
        --disable-assert \
        --disable-lto \
        --enable-warnings
}
