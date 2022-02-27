package set summary "XML 1.0 parser"
package set webpage "https://libexpat.github.io"
package set git.url "https://github.com/libexpat/libexpat.git"
package set src.url "https://github.com/libexpat/libexpat/releases/download/R_2_4_6/expat-2.4.6.tar.xz"
package set src.sum "de55794b7a9bc214852fdc075beaaecd854efe1361597e6268ee87946951289b"
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
