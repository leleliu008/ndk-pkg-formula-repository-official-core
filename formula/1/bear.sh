package set summary "Generate compilation database for clang tooling"
package set src.git "https://github.com/rizsotto/Bear.git"
package set src.url "https://github.com/rizsotto/Bear/archive/3.0.16.tar.gz"
package set src.sum "877ee5e89e8445f74df95f2f3896597f04b86a4e5d0dbbca07ac71027dcb362d"
package set license "GPL-3.0-or-later"
package set dep.pkg "fmt grpc nlohmann-json spdlog"
package set dep.cmd "pkg-config"
package set bsystem "cmake"
package set sdk.api 28

prepare() {
    sed_in_place '/-DCMAKE_PREFIX_PATH/c \            -DCMAKE_FIND_ROOT_PATH:PATH=${CMAKE_FIND_ROOT_PATH}' CMakeLists.txt
}

build() {
    cmakew \
        -DENABLE_UNIT_TESTS=OFF \
        -DENABLE_FUNC_TESTS=OFF
}
