package set summary "fake libpthread"
package set src.git "https://github.com/leleliu008/C.git"

build() {
    printf '%s\n' 'void _(){}'                    > pthread.c &&
    run $CC $CFLAGS $CPPFLAGS $LDFLAGS -c -o pthread.o pthread.c &&
    run $AR crs libpthread.a pthread.o &&
    run install_libs libpthread.a
}
