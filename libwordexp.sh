summary "wordexp(3) implementation"
webpage "https://linux.die.net/man/3/wordexp"
src_url "https://github.com/leleliu008/libwordexp.git"

build() {
    eeval "$CC $CFLAGS $CPPFLAGS -D__USE_GNU -c -o wordexp.o $SOURCE_DIR/wordexp.c" &&
    eeval "$CC $LDFLAGS -shared -o libwordexp.so wordexp.o" &&
    eeval "$AR rs libwordexp.a wordexp.o" &&
    install_files "$SOURCE_DIR/wordexp.h" libwordexp.a libwordexp.so
}
