pkg_set summary "Heavily optimized DEFLATE/zlib/gzip compression and decompression"
pkg_set git.url "https://github.com/ebiggers/libdeflate.git"
pkg_set src.url "https://github.com/ebiggers/libdeflate/archive/v1.12.tar.gz"
pkg_set src.sha "ba89fb167a5ab6bbdfa6ee3b1a71636e8140fa8471cce8a311697584948e4d06"
pkg_set license "MIT"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

build() {
    gmakew clean install PREFIX="$TARGET_INSTALL_DIR" CC="$CC" CPPFLAGS="'$CPPFLAGS'" CFLAGS="'$CFLAGS'" AR="$AR" V=1
}
