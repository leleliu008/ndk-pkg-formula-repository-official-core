package set summary "Generate compilation database for clang tooling"
package set src.git "https://github.com/rizsotto/Bear.git"
#package set src.url "dir:///data/data/com.termux/files/home/Bear"
package set src.url "https://github.com/rizsotto/Bear/archive/3.0.16.tar.gz"
package set src.sum "877ee5e89e8445f74df95f2f3896597f04b86a4e5d0dbbca07ac71027dcb362d"
package set license "GPL-3.0-or-later"
package set dep.pkg "fmt grpc nlohmann-json spdlog libconfstr"
package set dep.cmd "pkg-config"
package set bsystem "cmake"
package set sdk.api 28
package set ldflags "-lconfstr"

prepare() {
    sed_in_place '/-DCMAKE_PREFIX_PATH/c \            -DCMAKE_FIND_ROOT_PATH:PATH=${CMAKE_FIND_ROOT_PATH}' CMakeLists.txt
    sed_in_place '/HAVE_CONFSTR/c set(HAVE_CONFSTR 1)' source/CMakeLists.txt
    cat >> "$WORK_DIR/$TIMESTAMP_UNIX/include.h" <<EOF
#define _CS_PATH 10
#include<stdlib.h>
size_t confstr(int name, char *buf, size_t len);
EOF
}

build() {
    cmakew \
        -DENABLE_UNIT_TESTS=OFF \
        -DENABLE_FUNC_TESTS=OFF
}
