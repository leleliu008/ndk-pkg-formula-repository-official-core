pkg_set summary "crypt(3) implementation"
pkg_set webpage "http://michael.dipperstein.com/crypt"
pkg_set src.url "http://michael.dipperstein.com/crypt/crypt3.c"
pkg_set src.sha "75b16b6ef7f1c0c7c4172ed346b2b91b6f1be72c824b6671a059de2b2da554ff"
pkg_set license "Unlicense"
pkg_set version "1"

build() {
    run $CC $CFLAGS $CPPFLAGS -c -o crypt.o $PACKAGE_BSCRIPT_DIR/libcrypt-${PACKAGE_VERSION}.c &&
    run $CC $LDFLAGS -shared -o libcrypt.so crypt.o &&
    run $AR rsc libcrypt.a crypt.o &&
    echo "char* crypt(char* key, char* salt);" > crypt.h &&
    run install_incs crypt.h &&
    run install_libs libcrypt.a libcrypt.so
}
