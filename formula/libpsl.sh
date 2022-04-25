pkg_set summary "C library for the Public Suffix List"
pkg_set webpage "https://rockdaboot.github.io/libpsl"
pkg_set src.url "https://github.com/rockdaboot/libpsl/releases/download/0.21.1/libpsl-0.21.1.tar.gz"
pkg_set src.sha "ac6ce1e1fbd4d0254c4ddb9d37f1fa99dec83619c1253328155206b896210d4c"
pkg_set license "MIT"
pkg_set bsystem "configure"
pkg_set dep.pkg "libidn2"
pkg_set ldflags "-lunistring -liconv"

build() {
    configure \
        --disable-valgrind-tests \
        --enable-runtime=libidn2 \
        --enable-builtin=libidn2
}
