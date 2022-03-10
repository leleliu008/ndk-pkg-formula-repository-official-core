package set summary "XML 1.0 parser"
package set webpage "https://libexpat.github.io"
package set git.url "https://github.com/libexpat/libexpat.git"
package set src.url "https://github.com/libexpat/libexpat/releases/download/R_2_4_7/expat-2.4.7.tar.xz"
package set src.sum "9875621085300591f1e64c18fd3da3a0eeca4a74f884b9abac2758ad1bd07a7d"
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
