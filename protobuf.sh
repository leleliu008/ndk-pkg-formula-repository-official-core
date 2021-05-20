package set summary "Protocol buffers (Google's data interchange format)"
package set src.git "https://github.com/protocolbuffers/protobuf.git"
package set src.url "https://github.com/protocolbuffers/protobuf/releases/download/v3.13.0/protobuf-all-3.13.0.tar.gz"
package set src.sum "465fd9367992a9b9c4fba34a549773735da200903678b81b25f367982e8df376"
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
