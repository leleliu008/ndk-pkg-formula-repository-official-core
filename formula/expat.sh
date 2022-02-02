package set summary "XML 1.0 parser"
package set webpage "https://libexpat.github.io"
package set git.url "https://github.com/libexpat/libexpat.git"
package set src.url "https://github.com/libexpat/libexpat/releases/download/R_2_4_4/expat-2.4.4.tar.xz"
package set src.sum "b5d25d6e373351c2ed19b562b4732d01d2589ac8c8e9e7962d8df1207cc311b8"
package set license "MIT"
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
