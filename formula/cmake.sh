pkg_set summary "Cross-platform make"
pkg_set webpage "https://www.cmake.org"
pkg_set git.url "https://gitlab.kitware.com/cmake/cmake.git"
pkg_set src.url "https://github.com/Kitware/CMake/releases/download/v3.23.1/cmake-3.23.1.tar.gz"
pkg_set src.sha "33fd10a8ec687a4d0d5b42473f10459bb92b3ae7def2b745dc10b192760869f3"
pkg_set license "BSD-3-Clause|Copyright.txt|https://gitlab.kitware.com/cmake/cmake/-/raw/master/Copyright.txt"
pkg_set dep.pkg "libuv ncurses"
pkg_set bsystem "cmake"

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
