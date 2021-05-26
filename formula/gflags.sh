package set summary "Library for processing command-line flags"
package set webpage "https://gflags.github.io/gflags"
package set src.url "https://github.com/gflags/gflags/archive/v2.2.2.tar.gz"
package set src.sum "34af2f15cf7367513b352bdcd2493ab14ce43692d2dcd9dfc499492966c64dcf"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DGFLAGS_BUILD_SHARED_LIBS=ON \
        -DGFLAGS_BUILD_STATIC_LIBS=ON \
        -DGFLAGS_BUILD_gflags_LIB=ON \
        -DGFLAGS_BUILD_gflags_nothreads_LIB=ON \
        -DGFLAGS_BUILD_TESTING=OFF \
        -DGFLAGS_BUILD_PACKAGING=OFF
}
