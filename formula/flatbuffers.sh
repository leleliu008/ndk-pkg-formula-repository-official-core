pkg_set summary "Serialization library for C++, supporting Java, C#, and Go"
pkg_set webpage "https://google.github.io/flatbuffers"
pkg_set git.url "https://github.com/google/flatbuffers.git"
pkg_set src.url "https://github.com/google/flatbuffers/archive/v2.0.6.tar.gz"
pkg_set src.sha "e2dc24985a85b278dd06313481a9ca051d048f9474e0f199e372fea3ea4248c9"
pkg_set license "Apache-2.0"
pkg_set bsystem "cmake"

build0() {
    cmakew \
        -DFLATBUFFERS_BUILD_TESTS=OFF \
        -DFLATBUFFERS_BUILD_BENCHMARKS=OFF
}

build() {
    cmakew \
        -DFLATBUFFERS_BUILD_TESTS=OFF \
        -DFLATBUFFERS_BUILD_BENCHMARKS=OFF \
        -DFLATBUFFERS_FLATC_EXECUTABLE="$NATIVE_INSTALL_DIR/bin/flatc"
}
