summary "C library for the Public Suffix List"
webpage "https://rockdaboot.github.io/libpsl"
src_url "https://github.com/rockdaboot/libpsl/releases/download/0.21.1/libpsl-0.21.1.tar.gz"
src_sum "ac6ce1e1fbd4d0254c4ddb9d37f1fa99dec83619c1253328155206b896210d4c"
license "MIT"
depends "libidn2"

build() {
    export LDFLAGS="$LDFLAGS -lunistring -liconv"

    configure \
        --disable-valgrind-tests \
        --enable-runtime=libidn2 \
        --enable-builtin=libidn2
}
