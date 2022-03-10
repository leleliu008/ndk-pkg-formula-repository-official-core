package set summary "Multi-platform support library with a focus on asynchronous I/O"
package set webpage "https://libuv.org"
package set git.url "https://github.com/libuv/libuv.git"
package set src.url "https://github.com/libuv/libuv/archive/v1.44.0.tar.gz"
package set src.sum "f2482d547009d26d4d590ed6588043c540e707c833df52536744cb9a809e6617"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DLIBUV_BUILD_TESTS=OFF \
        -DLIBUV_BUILD_BENCH=OFF \
        -DQEMU=OFF &&
    mv "$ABI_LIBRARY_DIR/libuv_a.a" "$ABI_LIBRARY_DIR/libuv.a"
}
