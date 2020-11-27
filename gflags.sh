summary  "Library for processing command-line flags"
homepage "https://gflags.github.io/gflags"
url      "https://github.com/gflags/gflags/archive/v2.2.2.tar.gz"
sha256   "34af2f15cf7367513b352bdcd2493ab14ce43692d2dcd9dfc499492966c64dcf"
license  "BSD-3-Clause"

build() {
    cmake \
        -DGFLAGS_BUILD_SHARED_LIBS=ON \
        -DGFLAGS_BUILD_STATIC_LIBS=ON \
        -DGFLAGS_BUILD_gflags_LIB=ON \
        -DGFLAGS_BUILD_gflags_nothreads_LIB=ON \
        -DGFLAGS_BUILD_TESTING=OFF \
        -DGFLAGS_BUILD_PACKAGING=OFF
}
