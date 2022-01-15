package set summary "Protocol buffers (Google's data interchange format)"
package set git.url "https://github.com/protocolbuffers/protobuf.git"
package set src.url "https://github.com/protocolbuffers/protobuf/releases/download/v3.19.3/protobuf-all-3.19.3.tar.gz"
package set src.sum "84cca73ed97abce159c381e682ba0237bc21952359b07d8d45dc7e6399edd923"
package set license "BSD-3-Clause"
package set dep.pkg "zlib"
package set bsystem "cmake"
package set sourced "cmake"

build0() {
    # used by other package. make sure protoc and libprotoc same version
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
