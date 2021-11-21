package set summary "GNU binary tools for native development"
package set webpage "https://www.gnu.org/software/binutils/binutils.html"
package set src.url "https://ftp.gnu.org/gnu/binutils/binutils-2.37.tar.xz"
package set src.sum "820d9724f020a3e69cb337893a0b63c2db161dadcb0e06fc11dc29eb1e84a32c"
package set license "GPL-2.0"
package set bsystem "configure"
package set dep.pkg "isl gmp libmpc mpfr"
package set ldflags "-lm"

build() {
    configure \
        --with-isl="$isl_INSTALL_DIR" \
        --with-gmp="$gmp_INSTALL_DIR" \
        --with-mpc="$libmpc_INSTALL_DIR" \
        --with-mpfr="$mpfr_INSTALL_DIR" \
        --with-system-zlib \
        --disable-werror \
        --enable-interwork \
        --enable-multilib \
        --enable-targets=all
}
