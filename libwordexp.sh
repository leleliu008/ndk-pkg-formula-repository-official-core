summary "wordexp(3) implementation"
webpage "https://linux.die.net/man/3/wordexp"
src_git "https://github.com/leleliu008/libwordexp.git"

build() {
    run $CC $CFLAGS $CPPFLAGS -D__USE_GNU -c -o wordexp.o $SOURCE_DIR/wordexp.c &&
    run $CC $LDFLAGS -shared -o libwordexp.so wordexp.o &&
    run $AR rsc libwordexp.a wordexp.o &&
    run install_incs "$SOURCE_DIR/wordexp.h" &&
    run install_libs libwordexp.a libwordexp.so
}
