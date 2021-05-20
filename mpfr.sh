package set summary "C library for multiple-precision floating-point computations"
package set webpage "https://www.mpfr.org"
package set src.url "https://ftp.gnu.org/gnu/mpfr/mpfr-4.1.0.tar.xz"
package set src.sum "0c98a3f1732ff6ca4ea690552079da9c597872d30e96ec28414ee23c95558a7f"
package set bsystem "configure"
package set dep.pkg "gmp"

build() {
    configure \
        --with-gmp="$gmp_INSTALL_DIR" \
        --disable-logging \
        --disable-assert \
        --disable-lto \
        --enable-warnings
}
