pkg_set summary "C++ Common Libraries"
pkg_set webpage "https://abseil.io"
pkg_set git.url "https://github.com/abseil/abseil-cpp.git"
pkg_set src.url "https://github.com/abseil/abseil-cpp/archive/20211102.0.tar.gz"
pkg_set src.sha "dcf71b9cba8dc0ca9940c4b316a0c796be8fab42b070bb6b7cab62b48f0e66c4"
pkg_set license "Apache-2.0"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DCMAKE_CXX_STANDARD=17 \
        -DCMAKE_CXX_STANDARD_REQUIRED=TRUE
}
