package set summary "Cross-platform make"
package set webpage "https://www.cmake.org"
package set git.url "https://gitlab.kitware.com/cmake/cmake.git"
package set src.url "https://github.com/Kitware/CMake/releases/download/v3.23.0/cmake-3.23.0.tar.gz"
package set src.sum "5ab0a12f702f44013be7e19534cd9094d65cc9fe7b2cd0f8c9e5318e0fe4ac82"
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
