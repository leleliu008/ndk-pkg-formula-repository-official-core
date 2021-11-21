package set summary "Cross-platform make"
package set webpage "https://www.cmake.org"
package set src.git "https://gitlab.kitware.com/cmake/cmake.git"
package set src.url "https://github.com/Kitware/CMake/releases/download/v3.22.0/cmake-3.22.0.tar.gz"
package set src.sum "998c7ba34778d2dfdb3df8a695469e24b11e2bfa21fbe41b361a3f45e1c9345e"
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
        -DCMAKE_USE_SYSTEM_LIBUV=ON \
        -DCURSES_INCLUDE_PATH="$ncurses_INCLUDE_DIR" \
        -DCURSES_LIBRARY="$ncurses_LIBRARY_DIR/libncurses.a" \
        -DLibUV_INCLUDE_DIR="$libuv_INCLUDE_DIR" \
        -DLibUV_LIBRARY="$libuv_LIBRARY_DIR/libuv.a"
}
