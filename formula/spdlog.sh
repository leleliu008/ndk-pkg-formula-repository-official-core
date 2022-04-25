pkg_set summary "Super fast C++ logging library"
pkg_set git.url "https://github.com/gabime/spdlog.git"
pkg_set src.url "https://github.com/gabime/spdlog/archive/v1.9.2.tar.gz"
pkg_set src.sha "6fff9215f5cb81760be4cc16d033526d1080427d236e86d70bb02994f85e3d38"
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
