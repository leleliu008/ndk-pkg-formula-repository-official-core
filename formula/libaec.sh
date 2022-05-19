pkg_set summary "Adaptive Entropy Coding implementing Golomb-Rice algorithm"
pkg_set webpage "https://gitlab.dkrz.de/k202009/libaec"
pkg_set git.url "https://gitlab.dkrz.de/k202009/libaec.git"
pkg_set src.url "https://gitlab.dkrz.de/k202009/libaec/-/archive/v1.0.6/libaec-v1.0.6.tar.bz2"
pkg_set src.sha "31fb65b31e835e1a0f3b682d64920957b6e4407ee5bbf42ca49549438795a288"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "cmake-gmake"

prepare() {
    sed_in_place 's|DESTINATION cmake|DESTINATION lib/cmake/libaec|' CMakeLists.txt
}
