summary  "a packrat parser generator for C"
homepage "https://github.com/enechaev/packcc"
url      "https://github.com/enechaev/packcc.git"

build() {
    eeval "$CC $CPPFLAGS $CFLAGS $LDFLAGS -o packcc $SOURCE_DIR/packcc.c" &&
    install_bins packcc
}
