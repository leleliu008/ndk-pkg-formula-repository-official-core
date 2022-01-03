package set summary "Rich and complete approach to parallelism in C++"
package set git.url "https://github.com/oneapi-src/oneTBB.git"
package set src.url "https://github.com/oneapi-src/oneTBB/archive/refs/tags/v2021.5.0.tar.gz"
package set src.sum "e5b57537c741400cf6134b428fc1689a649d7d38d9bb9c1b6d64f092ea28178a"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew \
        -DANDROID_STL=c++_static \
        -DTBB_TEST=OFF \
        -DTBB_EXAMPLES=OFF \
        -DTBB_STRICT=OFF \
        -DTBB4PY_BUILD=OFF \
        -DTBB_ENABLE_IPO=ON
}
