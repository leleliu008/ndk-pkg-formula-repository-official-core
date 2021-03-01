summary "glob(3) implementation"
webpage "https://linux.die.net/man/3/glob"
src_url "https://github.com/leleliu008/libglob.git"

build() {
    run $CC $CFLAGS $CPPFLAGS -c -o glob.o $SOURCE_DIR/glob.c &&
    run $CC $LDFLAGS -shared -o libglob.so glob.o &&
    run $AR rs libglob.a glob.o &&
    install_files "$SOURCE_DIR/glob.h" libglob.a libglob.so
}
