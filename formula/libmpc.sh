package set summary "C library for the arithmetic of high precision complex numbers"
package set webpage "http://www.multiprecision.org/mpc"
package set src.url "https://ftp.gnu.org/gnu/mpc/mpc-1.2.1.tar.gz"
package set src.sum "17503d2c395dfcf106b622dc142683c1199431d095367c6aacba6eec30340459"
package set bsystem "configure"
package set dep.pkg "gmp mpfr"

build() {
    configure \
        --with-gmp="$gmp_INSTALL_DIR" \
        --with-mpfr="$mpfr_INSTALL_DIR" \
        --disable-valgrind-tests \
        --disable-logging
}
