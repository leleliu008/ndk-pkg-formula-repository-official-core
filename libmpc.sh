summary "C library for the arithmetic of high precision complex numbers"
webpage "http://www.multiprecision.org/mpc"
src_url "https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz"
src_sum "6985c538143c1208dcb1ac42cedad6ff52e267b47e5f970183a3e75125b43c2e"
depends "gmp mpfr"

build() {
    configure \
        --with-gmp="$gmp_INSTALL_DIR" \
        --with-mpfr="$mpfr_INSTALL_DIR" \
        --disable-valgrind-tests \
        --disable-logging
}
