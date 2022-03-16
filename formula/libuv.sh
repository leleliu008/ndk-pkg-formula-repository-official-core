package set summary "Multi-platform support library with a focus on asynchronous I/O"
package set webpage "https://libuv.org"
package set git.url "https://github.com/libuv/libuv.git"
package set src.url "https://github.com/libuv/libuv/archive/v1.44.1.tar.gz"
package set src.sum "e91614e6dc2dd0bfdd140ceace49438882206b7a6fb00b8750914e67a9ed6d6b"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DLIBUV_BUILD_TESTS=OFF \
        -DLIBUV_BUILD_BENCH=OFF \
        -DQEMU=OFF &&
    mv "$TARGET_LIBRARY_DIR/libuv_a.a" "$TARGET_LIBRARY_DIR/libuv.a"
}
