package set summary "Multi-platform support library with a focus on asynchronous I/O"
package set webpage "https://libuv.org"
package set src.url "https://github.com/libuv/libuv/archive/v1.40.0.tar.gz"
package set src.sum "70fe1c9ba4f2c509e8166c0ca2351000237da573bb6c82092339207a9715ba6b"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DLIBUV_BUILD_TESTS=OFF \
        -DLIBUV_BUILD_BENCH=OFF \
        -DQEMU=OFF &&
    mv "$ABI_LIBRARY_DIR/libuv_a.a" "$ABI_LIBRARY_DIR/libuv.a"
}
