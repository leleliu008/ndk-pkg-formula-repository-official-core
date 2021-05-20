package set summary "C library for the Public Suffix List"
package set webpage "https://rockdaboot.github.io/libpsl"
package set src.url "https://github.com/rockdaboot/libpsl/releases/download/0.21.1/libpsl-0.21.1.tar.gz"
package set src.sum "ac6ce1e1fbd4d0254c4ddb9d37f1fa99dec83619c1253328155206b896210d4c"
package set license "MIT"
package set bsystem "configure"
package set dep.pkg "libidn2"
package set ldflags "-lunistring -liconv"

build() {
    configure \
        --disable-valgrind-tests \
        --enable-runtime=libidn2 \
        --enable-builtin=libidn2
}
