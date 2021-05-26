package set summary "a packrat parser generator for C"
package set src.git "https://github.com/enechaev/packcc.git"

build() {
    run $CC $CPPFLAGS $CFLAGS $LDFLAGS -o packcc $SOURCE_DIR/packcc.c &&
    install_bins packcc
}
