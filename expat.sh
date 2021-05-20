package set summary "XML 1.0 parser"
package set webpage "https://libexpat.github.io"
package set src.url "https://github.com/libexpat/libexpat/releases/download/R_2_2_9/expat-2.2.9.tar.xz"
package set src.sum "1ea6965b15c2106b6bbe883397271c80dfa0331cdf821b2c319591b55eadc0a4"
package set bsystem "cmake"

build() {
    cmakew \
    -DEXPAT_BUILD_DOCS=OFF \
    -DEXPAT_BUILD_TESTS=OFF \
    -DEXPAT_BUILD_FUZZERS=OFF \
    -DEXPAT_BUILD_EXAMPLES=OFF \
    -DEXPAT_BUILD_TOOLS=ON \
    -DEXPAT_SHARED_LIBS=ON
}
