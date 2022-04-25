pkg_set summary "Heavily optimized DEFLATE/zlib/gzip compression and decompression"
pkg_set git.url "https://github.com/ebiggers/libdeflate.git"
pkg_set src.url "https://github.com/ebiggers/libdeflate/archive/v1.10.tar.gz"
pkg_set src.sha "5c1f75c285cd87202226f4de49985dcb75732f527eefba2b3ddd70a8865f2533"
pkg_set license "MIT"
pkg_set bsystem "make"
pkg_set binbstd "yes"

build() {
    makew clean install PREFIX="$TARGET_INSTALL_DIR" CC="$CC" CPPFLAGS="'$CPPFLAGS'" CFLAGS="'$CFLAGS'" AR="$AR" V=1
}
