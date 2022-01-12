package set summary "Multi-platform support library with a focus on asynchronous I/O"
package set webpage "https://libuv.org"
package set git.url "https://github.com/libuv/libuv.git"
package set src.url "https://github.com/libuv/libuv/archive/v1.43.0.tar.gz"
package set src.sum "9e27825a55279de69a7c43e42d509fd1337c9bece2547c761e91a1592e91cc4d"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DLIBUV_BUILD_TESTS=OFF \
        -DLIBUV_BUILD_BENCH=OFF \
        -DQEMU=OFF &&
    mv "$ABI_LIBRARY_DIR/libuv_a.a" "$ABI_LIBRARY_DIR/libuv.a"
}
