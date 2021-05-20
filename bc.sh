package set summary "Arbitrary precision numeric processing language"
package set webpage "https://www.gnu.org/software/bc"
package set src.url "https://ftp.gnu.org/gnu/bc/bc-1.07.1.tar.gz"
package set src.sum "62adfca89b0a1c0164c2cdca59ca210c1d44c3ffc46daf9931cf4942664cb02a"
package set license "GPL-3.0"
package set bsystem "configure"
package set dep.cmd "bison flex"
package set dep.pkg "readline"

build0() {
    configure --without-readline --without-libedit &&
    install -d           "$NATIVE_INSTALL_DIR/include" &&
    install bc/libmath.h "$NATIVE_INSTALL_DIR/include"
}

build() {
    run install -d "$BUILD_DIR/bc" &&
    run cp "$NATIVE_INSTALL_DIR/include/libmath.h" "$BUILD_DIR/bc"
    run touch -t 190001010000 $BUILD_DIR/bc/libmath.h &&
    configure --without-libedit --with-readline="$readline_INSTALL_DIR"
}
