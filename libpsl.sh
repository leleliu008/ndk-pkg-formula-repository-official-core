summary="C library for the Public Suffix List"
homepage="https://rockdaboot.github.io/libpsl"
url="https://github.com/rockdaboot/libpsl/releases/download/0.21.1/libpsl-0.21.1.tar.gz"
sha256="ac6ce1e1fbd4d0254c4ddb9d37f1fa99dec83619c1253328155206b896210d4c"
license="MIT"
dependencies="libidn2"

build() {
    export LDFLAGS="$LDFLAGS -lunistring -liconv"

    configure \
        --disable-valgrind-tests \
        --enable-runtime=libidn2 \
        --enable-builtin=libidn2
}
