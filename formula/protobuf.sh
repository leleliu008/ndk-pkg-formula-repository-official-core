package set summary "Protocol buffers (Google's data interchange format)"
package set git.url "https://github.com/protocolbuffers/protobuf.git"
package set src.url "https://github.com/protocolbuffers/protobuf/releases/download/v3.19.1/protobuf-all-3.19.1.tar.gz"
package set src.sum "80631d5a18d51daa3a1336e340001ad4937e926762f21144c62d26fe2a8d71fe"
package set license "BSD-3-Clause"
package set bsystem "cmake"
package set dep.pkg "zlib"
package set sourced "cmake"
package set ldflags "-llog"

build0() {
    # used by other package. makew sure protoc and libprotoc same version
    cmakew \
        -Dprotobuf_BUILD_TESTS=OFF \
        -Dprotobuf_BUILD_EXAMPLES=OFF
}

build() {
    cmakew \
        -Dprotobuf_BUILD_TESTS=OFF \
        -Dprotobuf_BUILD_EXAMPLES=OFF \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so"
}
