summary  "glob(3) implementation"
homepage "https://linux.die.net/man/3/glob"
url      "https://github.com/leleliu008/libglob.git"

build() {
    eeval "$CC $CFLAGS $CPPFLAGS -c -o glob.o $SOURCE_DIR/glob.c" &&
    eeval "$CC $LDFLAGS -shared -o libglob.so glob.o" &&
    eeval "$AR rs libglob.a glob.o" &&
    install_files "$SOURCE_DIR/glob.h" libglob.a libglob.so
}
