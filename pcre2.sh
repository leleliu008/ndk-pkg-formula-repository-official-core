summary "Perl compatible regular expressions library with a new API"
webpage "https://www.pcre.org"
src_url "https://ftp.pcre.org/pub/pcre/pcre2-10.35.tar.bz2"
src_sum "9ccba8e02b0ce78046cdfb52e5c177f0f445e421059e43becca4359c669d4613"
bsystem "cmake"
depends "zlib bzip2"

build() {
    cmake \
    -DPCRE2_BUILD_PCRE2_8=ON \
    -DPCRE2_BUILD_PCRE2_16=ON \
    -DPCRE2_BUILD_PCRE2_32=ON \
    -DPCRE2_BUILD_PCRE2GREP=ON \
    -DPCRE2_BUILD_TESTS=OFF \
    -DPCRE2_DEBUG=OFF \
    -DPCRE2_SUPPORT_VALGRIND=OFF \
    -DPCRE2_SUPPORT_UNICODE=ON \
    -DPCRE2_SUPPORT_LIBZ=ON \
    -DPCRE2_SUPPORT_LIBBZ2=ON \
    -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
    -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so" \
    -DBZIP2_INCLUDE_DIR="$bzip2_INCLUDE_DIR" \
    -DBZIP2_LIBRARY_RELEASE="$bzip2_LIBRARY_DIR/libbz2.so"
}
