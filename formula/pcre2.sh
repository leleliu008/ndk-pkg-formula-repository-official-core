package set summary "Perl compatible regular expressions library with a new API"
package set webpage "https://www.pcre.org"
package set git.url "https://github.com/PhilipHazel/pcre2.git"
package set src.url "https://github.com/PhilipHazel/pcre2/releases/download/pcre2-10.39/pcre2-10.39.tar.bz2"
package set src.sum "0f03caf57f81d9ff362ac28cd389c055ec2bf0678d277349a1a4bee00ad6d440"
package set license "BSD-3-Clause"
package set dep.pkg "zlib bzip2"
package set bsystem "cmake"

build() {
    cmakew \
        -DPCRE2_BUILD_PCRE2_8=ON \
        -DPCRE2_BUILD_PCRE2_16=ON \
        -DPCRE2_BUILD_PCRE2_32=ON \
        -DPCRE2_BUILD_PCRE2GREP=ON \
        -DPCRE2_BUILD_TESTS=OFF \
        -DPCRE2_DEBUG=OFF \
        -DPCRE2_SUPPORT_VALGRIND=OFF \
        -DPCRE2_SUPPORT_UNICODE=ON \
        -DPCRE2_SUPPORT_LIBZ=ON \
        -DPCRE2_SUPPORT_LIBBZ2=ON
}
