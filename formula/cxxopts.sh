package set summary "Lightweight C++ command-line option parser"
package set webpage "https://github.com/jarro2783/cxxopts.git"
package set src.url "https://github.com/jarro2783/cxxopts/archive/v3.0.0.tar.gz"
package set src.sum "36f41fa2a46b3c1466613b63f3fa73dc24d912bc90d667147f1e43215a8c6d00"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DCXXOPTS_BUILD_TESTS=OFF \
        -DCXXOPTS_BUILD_EXAMPLES=OFF
}
