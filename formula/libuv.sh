package set summary "Multi-platform support library with a focus on asynchronous I/O"
package set webpage "https://libuv.org"
package set src.git "https://github.com/libuv/libuv.git"
package set src.url "https://github.com/libuv/libuv/archive/v1.42.0.tar.gz"
package set src.sum "371e5419708f6aaeb8656671f89400b92a9bba6443369af1bb70bcd6e4b3c764"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DLIBUV_BUILD_TESTS=OFF \
        -DLIBUV_BUILD_BENCH=OFF \
        -DQEMU=OFF &&
    mv "$ABI_LIBRARY_DIR/libuv_a.a" "$ABI_LIBRARY_DIR/libuv.a"
}
