pkg_set summary "Key-value storage library with ordered mapping"
pkg_set git.url "https://github.com/google/leveldb.git"
pkg_set src.url "https://github.com/google/leveldb/archive/1.23.tar.gz"
pkg_set src.sha "9a37f8a6174f09bd622bc723b55881dc541cd50747cbd08831c2a82d620f6d76"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "snappy crc32c"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DLEVELDB_BUILD_TESTS=OFF \
        -DLEVELDB_BUILD_BENCHMARKS=OFF
}
