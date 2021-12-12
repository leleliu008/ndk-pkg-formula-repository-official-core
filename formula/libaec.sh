package set summary "Adaptive Entropy Coding implementing Golomb-Rice algorithm"
package set webpage "https://gitlab.dkrz.de/k202009/libaec"
package set src.git "https://gitlab.dkrz.de/k202009/libaec.git"
package set src.url "https://gitlab.dkrz.de/k202009/libaec/-/archive/v1.0.6/libaec-v1.0.6.tar.bz2"
package set src.sum "31fb65b31e835e1a0f3b682d64920957b6e4407ee5bbf42ca49549438795a288"
package set license "BSD-2-Clause"
package set bsystem "cmake-make"

prepare() {
    sed_in_place 's|DESTINATION cmake|DESTINATION lib/cmake/libaec|' CMakeLists.txt
}
