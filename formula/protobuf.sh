pkg_set summary "Protocol Buffers(data interchange format) compiler and library developed by Google"
pkg_set git.url "https://github.com/protocolbuffers/protobuf.git"
pkg_set src.url "https://github.com/protocolbuffers/protobuf/releases/download/v3.19.4/protobuf-all-3.19.4.tar.gz"
pkg_set src.sha "ba0650be1b169d24908eeddbe6107f011d8df0da5b1a5a4449a913b10e578faf"
pkg_set license "BSD-3-Clause|LICENSE|https://raw.githubusercontent.com/protocolbuffers/protobuf/main/LICENSE"
pkg_set dep.pkg "zlib"
pkg_set bsystem "cmake"
pkg_set bscript "cmake"

build0() {
    # used by other package. make sure protoc and libprotoc same version
    cmakew \
        -Dprotobuf_BUILD_TESTS=OFF \
        -Dprotobuf_BUILD_EXAMPLES=OFF
}

build() {
    cmakew \
        -Dprotobuf_BUILD_TESTS=OFF \
        -Dprotobuf_BUILD_EXAMPLES=OFF
}
