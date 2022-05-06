pkg_set summary "Arbitrary precision numeric processing language"
pkg_set webpage "https://www.gnu.org/software/bc"
pkg_set src.url "https://ftp.gnu.org/gnu/bc/bc-1.07.1.tar.gz"
pkg_set src.sha "62adfca89b0a1c0164c2cdca59ca210c1d44c3ffc46daf9931cf4942664cb02a"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"
pkg_set dep.cmd "bison flex"
pkg_set dep.pkg "readline"

build0() {
    configure --without-readline --without-libedit &&
    install -d           "$NATIVE_INSTALL_DIR/include" &&
    install bc/libmath.h "$NATIVE_INSTALL_DIR/include"
}

build() {
    run install -d "$TARGET_BUILDIN_DIR/bc" &&
    run cp "$NATIVE_INSTALL_DIR/include/libmath.h" "$TARGET_BUILDIN_DIR/bc"
    run touch -t 190001010000 $TARGET_BUILDIN_DIR/bc/libmath.h &&
    configure --without-libedit --with-readline="$readline_INSTALL_DIR"
}
