package set summary "Super fast C++ logging library"
package set src.git "https://github.com/gabime/spdlog.git"
package set src.url "https://github.com/gabime/spdlog/archive/v1.8.5.tar.gz"
package set src.sum "944d0bd7c763ac721398dca2bb0f3b5ed16f67cef36810ede5061f35a543b4b8"
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
