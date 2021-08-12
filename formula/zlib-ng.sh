package set summary "Zlib replacement with optimizations for next generation systems"
package set src.git "https://github.com/zlib-ng/zlib-ng.git"
package set src.url "https://github.com/zlib-ng/zlib-ng/archive/2.0.5.tar.gz"
package set src.sum "eca3fe72aea7036c31d00ca120493923c4d5b99fe02e6d3322f7c88dbdcd0085"
package set license "Zlib"
package set bsystem "cmake"

build() {
    cmakew \
        -DZLIB_COMPAT=ON \
        -DZLIB_ENABLE_TESTS=OFF
}
