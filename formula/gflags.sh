pkg_set summary "Library for processing command-line flags"
pkg_set webpage "https://gflags.github.io/gflags"
pkg_set src.url "https://github.com/gflags/gflags/archive/v2.2.2.tar.gz"
pkg_set src.sha "34af2f15cf7367513b352bdcd2493ab14ce43692d2dcd9dfc499492966c64dcf"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DGFLAGS_BUILD_SHARED_LIBS=ON \
        -DGFLAGS_BUILD_STATIC_LIBS=ON \
        -DGFLAGS_BUILD_gflags_LIB=ON \
        -DGFLAGS_BUILD_gflags_nothreads_LIB=ON \
        -DGFLAGS_BUILD_TESTING=OFF \
        -DGFLAGS_BUILD_PACKAGING=OFF
}
