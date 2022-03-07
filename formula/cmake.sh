package set summary "Cross-platform make"
package set webpage "https://www.cmake.org"
package set git.url "https://gitlab.kitware.com/cmake/cmake.git"
package set src.url "https://github.com/Kitware/CMake/releases/download/v3.22.3/cmake-3.22.3.tar.gz"
package set src.sum "9f8469166f94553b6978a16ee29227ec49a2eb5ceb608275dec40d8ae0d1b5a0"
package set license "BSD-3-Clause"
package set dep.pkg "libuv ncurses"
package set bsystem "cmake"

prepare() {
    sed_in_place 's/defined(__linux__) || defined(_WIN32)/0/g' Source/cmake.cxx
}

build() {
    touch android_lf.h &&
    export CPPFLAGS="$CPPFLAGS -I$PWD" &&
    cmakew \
        -DBUILD_QtDialog=OFF \
        -DBUILD_CursesDialog=ON \
        -DCMake_BUILD_LTO=OFF \
        -DCMAKE_USE_SYSTEM_LIBUV=ON
}
