summary "C library for multiple-precision floating-point computations"
webpage "https://www.mpfr.org"
src_url "https://ftp.gnu.org/gnu/mpfr/mpfr-4.1.0.tar.xz"
src_sum "0c98a3f1732ff6ca4ea690552079da9c597872d30e96ec28414ee23c95558a7f"
bsystem "configure"
depends "gmp"

build() {
    configure \
        --with-gmp="$gmp_INSTALL_DIR" \
        --disable-logging \
        --disable-assert \
        --disable-lto \
        --enable-warnings
}
