summary "a packrat parser generator for C"
webpage "https://github.com/enechaev/packcc"
src_git "https://github.com/enechaev/packcc.git"

build() {
    run $CC $CPPFLAGS $CFLAGS $LDFLAGS -o packcc $SOURCE_DIR/packcc.c &&
    install_bins packcc
}
