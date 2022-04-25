pkg_set summary "Zlib replacement with optimizations for next generation systems"
pkg_set git.url "https://github.com/zlib-ng/zlib-ng.git"
pkg_set src.url "https://github.com/zlib-ng/zlib-ng/archive/2.0.6.tar.gz"
pkg_set src.sha "8258b75a72303b661a238047cb348203d88d9dddf85d480ed885f375916fcab6"
pkg_set license "Zlib"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DZLIB_COMPAT=ON \
        -DZLIB_ENABLE_TESTS=OFF
}
