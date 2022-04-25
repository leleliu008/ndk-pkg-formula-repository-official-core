pkg_set summary "a packrat parser generator for C"
pkg_set git.url "https://github.com/enechaev/packcc.git"
pkg_set license "MIT"

build() {
    run $CC $CPPFLAGS $CFLAGS $LDFLAGS -pie -fPIE -o packcc $PACKAGE_BSCRIPT_DIR/packcc.c &&
    install_bins packcc
}
