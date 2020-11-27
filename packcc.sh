summary  "a packrat parser generator for C"
homepage "https://github.com/enechaev/packcc"
url      "https://github.com/enechaev/packcc.git"

build() {
    echo "$CC $CPPFLAGS $CFLAGS $LDFLAGS -o packcc $SOURCE_DIR/packcc.c" &&
    eval "$CC $CPPFLAGS $CFLAGS $LDFLAGS -o packcc $SOURCE_DIR/packcc.c" &&
    install -v -d            "$ABI_BINARY_DIR" &&
    install -v -m 755 packcc "$ABI_BINARY_DIR"
}
