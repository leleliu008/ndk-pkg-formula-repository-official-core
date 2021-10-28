package set summary "Super fast C++ logging library"
package set src.git "https://github.com/gabime/spdlog.git"
package set src.url "https://github.com/gabime/spdlog/archive/v1.9.2.tar.gz"
package set src.sum "6fff9215f5cb81760be4cc16d033526d1080427d236e86d70bb02994f85e3d38"
package set license "MIT"
package set dep.pkg "fmt"
package set bsystem "cmake"

build() {
    cmakew \
        -DSPDLOG_BUILD_BENCH=OFF \
        -DSPDLOG_BUILD_TESTS=OFF \
        -DSPDLOG_BUILD_SHARED=ON \
        -DSPDLOG_FMT_EXTERNAL=ON \
        -Dfmt_DIR="$fmt_LIBRARY_DIR/cmake/fmt"
}
