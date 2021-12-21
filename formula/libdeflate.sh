package set summary "Heavily optimized DEFLATE/zlib/gzip compression and decompression"
package set src.git "https://github.com/ebiggers/libdeflate.git"
package set src.url "https://github.com/ebiggers/libdeflate/archive/v1.8.tar.gz"
package set src.sum "50711ad4e9d3862f8dfb11b97eb53631a86ee3ce49c0e68ec2b6d059a9662f61"
package set license "MIT"
package set bsystem "make"

build() {
    makew -C "$SOURCE_DIR" clean install PREFIX="$ABI_INSTALL_DIR" CC="$CC" CPPFLAGS="'$CPPFLAGS'" CFLAGS="'$CFLAGS'" AR="$AR" V=1
}
