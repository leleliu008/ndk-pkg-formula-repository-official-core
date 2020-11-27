summary  "C library for multiple-precision floating-point computations"
homepage "https://www.mpfr.org"
url      "https://ftp.gnu.org/gnu/mpfr/mpfr-4.1.0.tar.xz"
sha256   "0c98a3f1732ff6ca4ea690552079da9c597872d30e96ec28414ee23c95558a7f"
dependencies "gmp"

build() {
    configure \
        --with-gmp="$gmp_INSTALL_DIR" \
        --disable-logging \
        --disable-assert \
        --disable-lto \
        --enable-warnings
}
