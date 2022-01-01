package set summary "C++ Common Libraries"
package set webpage "https://abseil.io"
package set git.url "https://github.com/abseil/abseil-cpp.git"
package set src.url "https://github.com/abseil/abseil-cpp/archive/20211102.0.tar.gz"
package set src.sum "dcf71b9cba8dc0ca9940c4b316a0c796be8fab42b070bb6b7cab62b48f0e66c4"
package set license "Apache-2.0"
package set bsystem "cmake"

prepare() {
    sed_in_place '/-lrt/d' absl/base/CMakeLists.txt
}

build() {
    cmakew \
        -DCMAKE_CXX_STANDARD=17 \
        -DCMAKE_CXX_STANDARD_REQUIRED=TRUE
}
