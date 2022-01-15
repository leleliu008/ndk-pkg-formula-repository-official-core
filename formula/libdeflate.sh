package set summary "Heavily optimized DEFLATE/zlib/gzip compression and decompression"
package set git.url "https://github.com/ebiggers/libdeflate.git"
package set src.url "https://github.com/ebiggers/libdeflate/archive/v1.9.tar.gz"
package set src.sum "a537ab6125c226b874c02b166488b326aece954930260dbf682d88fc339137e3"
package set license "MIT"
package set bsystem "make"

build() {
    makew -C "$SOURCE_DIR" clean install PREFIX="$ABI_INSTALL_DIR" CC="$CC" CPPFLAGS="'$CPPFLAGS'" CFLAGS="'$CFLAGS'" AR="$AR" V=1
}
