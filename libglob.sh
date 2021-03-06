summary "glob(3) implementation"
webpage "https://linux.die.net/man/3/glob"
src_git "https://github.com/leleliu008/libglob.git"

build() {
    run $CC $CFLAGS $CPPFLAGS -c -o glob.o $SOURCE_DIR/glob.c &&
    run $CC $LDFLAGS -shared -o libglob.so glob.o &&
    run $AR $ARFLAGS libglob.a glob.o &&
    run install_incs "$SOURCE_DIR/glob.h" &&
    run install_bins libglob.a libglob.so
}
