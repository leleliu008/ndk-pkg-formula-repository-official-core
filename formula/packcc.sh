package set summary "a packrat parser generator for C"
package set git.url "https://github.com/enechaev/packcc.git"

build() {
    run $CC $CPPFLAGS $CFLAGS $LDFLAGS -pie -fPIE -o packcc $PACKAGE_BSCRIPT_DIR/packcc.c &&
    install_bins packcc
}
