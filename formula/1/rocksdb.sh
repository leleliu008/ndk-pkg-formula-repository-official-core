package set summary "Embeddable, persistent key-value store for fast storage"
package set webpage "https://rocksdb.org/"
package set src.git "https://github.com/facebook/rocksdb.git"
package set src.url "https://github.com/facebook/rocksdb/archive/v6.27.3.tar.gz"
package set src.sum "ee29901749b9132692b26f0a6c1d693f47d1a9ed8e3771e60556afe80282bf58"
package set license "GPL-2.0-only"
package set dep.pkg "gflags snappy lz4 zstd bzip2"
package set bsystem "cmake"

build() {
    cmakew \
        -DPORTABLE=ON \
        -DUSE_RTTI=ON \
        -DWITH_BENCHMARK_TOOLS=OFF \
        -DWITH_BZ2=ON \
        -DWITH_LZ4=ON \
        -DWITH_ZLIB=ON \
        -DWITH_ZSTD=ON \
        -DWITH_SNAPPY=ON \
        -DWITH_GFLAGS=ON \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so" \
        -DBZIP2_INCLUDE_DIR="$bzip2_INCLUDE_DIR" \
        -DBZIP2_LIBRARY_RELEASE="$bzip2_LIBRARY_DIR/libbz2.so"
}
