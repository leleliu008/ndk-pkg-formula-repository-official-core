pkg_set summary "Multi-platform support library with a focus on asynchronous I/O"
pkg_set webpage "https://libuv.org"
pkg_set git.url "https://github.com/libuv/libuv.git"
pkg_set src.url "https://github.com/libuv/libuv/archive/v1.44.1.tar.gz"
pkg_set src.sha "e91614e6dc2dd0bfdd140ceace49438882206b7a6fb00b8750914e67a9ed6d6b"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DLIBUV_BUILD_TESTS=OFF \
        -DLIBUV_BUILD_BENCH=OFF \
        -DQEMU=OFF &&
    mv "$TARGET_INSTALL_DIR/lib/libuv_a.a" "$TARGET_INSTALL_DIR/lib/libuv.a"
}
