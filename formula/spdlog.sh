pkg_set summary "Super fast C++ logging library"
pkg_set git.url "https://github.com/gabime/spdlog.git"
pkg_set src.url "https://github.com/gabime/spdlog/archive/v1.10.0.tar.gz"
pkg_set src.sha "697f91700237dbae2326b90469be32b876b2b44888302afbc7aceb68bcfe8224"
pkg_set license "MIT"
pkg_set dep.pkg "fmt"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DSPDLOG_BUILD_BENCH=OFF \
        -DSPDLOG_BUILD_TESTS=OFF \
        -DSPDLOG_BUILD_SHARED=ON \
        -DSPDLOG_FMT_EXTERNAL=ON
}
