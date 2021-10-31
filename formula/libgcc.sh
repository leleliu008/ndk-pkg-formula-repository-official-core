package set summary "libgcc faked rust toolchain"
package set webpage "http://michael.dipperstein.com/crypt"
package set src.url "http://michael.dipperstein.com/crypt/crypt3.c"
package set src.sum "75b16b6ef7f1c0c7c4172ed346b2b91b6f1be72c824b6671a059de2b2da554ff"
package set version "1"

build() {
    run "printf 'void xxxxxxxxxxxyyyyyyzzzzzz(){}' > libgcc.c" &&
    run $CC $CFLAGS $CPPFLAGS -c -o libgcc.o libgcc.c &&
    run $AR rsc libgcc.a libgcc.o &&
    run install_libs libgcc.a
}
