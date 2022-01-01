package set summary "Zip file manipulation library with minizip 1.x compatibility layer"
package set git.url "https://github.com/zlib-ng/minizip-ng.git"
package set src.url "https://github.com/zlib-ng/minizip-ng/archive/3.0.4.tar.gz"
package set src.sum "2ab219f651901a337a7d3c268128711b80330a99ea36bdc528c76b591a624c3c"
package set license "Zlib"
package set dep.pkg "zlib xz zstd bzip2"
package set dep.cmd "pkg-config"
package set bsystem "cmake"

build() {
    cmakew \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so" \
        -DBZIP2_INCLUDE_DIR="$bzip2_INCLUDE_DIR" \
        -DBZIP2_LIBRARY_RELEASE="$bzip2_LIBRARY_DIR/libbz2.so"
}
