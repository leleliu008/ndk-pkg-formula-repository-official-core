summary "Cross platform file encryption utility using blowfish"
webpage "https://bcrypt.sourceforge.io"
src_url "https://bcrypt.sourceforge.io/bcrypt-1.1.tar.gz"
src_sum "b9c1a7c0996a305465135b90123b0c63adbb5fa7c47a24b3f347deb2696d417d"
bsystem "make"
ldflags "-lz"

prepare() {
    sed_in_place 's|man/man1|share/man/man1|g' Makefile
}

build() {
    make -C "$SOURCE_DIR" clean &&
    make -C "$SOURCE_DIR" install CC="$CC" CFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS'" PREFIX="$ABI_INSTALL_DIR"
}
