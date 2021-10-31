package set summary "XML 1.0 parser"
package set webpage "https://libexpat.github.io"
package set src.git "https://github.com/libexpat/libexpat.git"
package set src.url "https://github.com/libexpat/libexpat/releases/download/R_2_4_1/expat-2.4.1.tar.xz"
package set src.sum "cf032d0dba9b928636548e32b327a2d66b1aab63c4f4a13dd132c2d1d2f2fb6a"
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
