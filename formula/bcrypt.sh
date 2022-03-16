package set summary "Cross platform file encryption utility using blowfish"
package set webpage "https://bcrypt.sourceforge.io"
package set src.url "https://bcrypt.sourceforge.io/bcrypt-1.1.tar.gz"
package set src.sum "b9c1a7c0996a305465135b90123b0c63adbb5fa7c47a24b3f347deb2696d417d"
package set bsystem "make"
package set ldflags "-lz"

prepare() {
    sed_in_place 's|man/man1|share/man/man1|g' Makefile
}

build() {
    makew -C "$SOURCE_DIR" clean &&
    makew -C "$SOURCE_DIR" install CC="$CC" CFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS'" PREFIX="$TARGET_INSTALL_DIR"
}
