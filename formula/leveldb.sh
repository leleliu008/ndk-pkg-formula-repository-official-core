package set summary "Key-value storage library with ordered mapping"
package set git.url "https://github.com/google/leveldb.git"
package set src.url "https://github.com/google/leveldb/archive/1.23.tar.gz"
package set src.sum "9a37f8a6174f09bd622bc723b55881dc541cd50747cbd08831c2a82d620f6d76"
package set license "BSD-3-Clause"
package set dep.pkg "snappy crc32c"
package set bsystem "cmake"

build() {
    cmakew \
        -DLEVELDB_BUILD_TESTS=OFF \
        -DLEVELDB_BUILD_BENCHMARKS=OFF
}
