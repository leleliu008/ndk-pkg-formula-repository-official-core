package set summary "C++ Common Libraries"
package set webpage "https://abseil.io"
package set src.git "https://github.com/abseil/abseil-cpp.git"
package set src.url "https://github.com/abseil/abseil-cpp/archive/20210324.2.tar.gz"
package set src.sum "59b862f50e710277f8ede96f083a5bb8d7c9595376146838b9580be90374ee1f"
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
