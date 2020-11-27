summary  "Multi-platform support library with a focus on asynchronous I/O"
homepage "https://libuv.org"
url      "https://github.com/libuv/libuv/archive/v1.40.0.tar.gz"
sha256   "70fe1c9ba4f2c509e8166c0ca2351000237da573bb6c82092339207a9715ba6b"
license  "MIT"

build() {
    cmake \
    -DLIBUV_BUILD_TESTS=OFF \
    -DLIBUV_BUILD_BENCH=OFF \
    -DQEMU=OFF &&
    mv "$ABI_LIBRARY_DIR/libuv_a.a" "$ABI_LIBRARY_DIR/libuv.a"
}
