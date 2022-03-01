package set summary "Heavily optimized DEFLATE/zlib/gzip compression and decompression"
package set git.url "https://github.com/ebiggers/libdeflate.git"
package set src.url "https://github.com/ebiggers/libdeflate/archive/v1.10.tar.gz"
package set src.sum "5c1f75c285cd87202226f4de49985dcb75732f527eefba2b3ddd70a8865f2533"
package set license "MIT"
package set bsystem "make"

build() {
    makew -C "$SOURCE_DIR" clean install PREFIX="$ABI_INSTALL_DIR" CC="$CC" CPPFLAGS="'$CPPFLAGS'" CFLAGS="'$CFLAGS'" AR="$AR" V=1
}
