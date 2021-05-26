package set summary "Free lossless audio codec"
package set webpage "https://xiph.org/flac"
package set src.git "https://github.com/xiph/flac.git"
package set src.url "https://github.com/xiph/flac/archive/1.3.3.tar.gz"
package set src.sum "668cdeab898a7dd43cf84739f7e1f3ed6b35ece2ef9968a5c7079fe9adfe1689"
package set bsystem "autogen"
package set dep.cmd "libtoolize libtool"
package set dep.pkg "libogg libiconv"

# https://github.com/android/ndk/issues/702
# iconv_t iconv_open(const char* __src_encoding, const char* __dst_encoding) __INTRODUCED_IN(28);
# size_t  iconv(iconv_t __converter, char** __src_buf, size_t* __src_bytes_left, char** __dst_buf, size_t* __dst_bytes_left) __INTRODUCED_IN(28);
# int iconv_close(iconv_t __converter) __INTRODUCED_IN(28);

prepare() {
    sed_in_place 's/printf(usage)/printf("%s", usage)/g'                   src/utils/flacdiff/main.cpp &&
    sed_in_place 's/fprintf(stderr, usage)/fprintf(stderr, "%s", usage)/g' src/utils/flacdiff/main.cpp &&
    prepare_with_configure
}

build() {
    build_with_configure
}

build_with_cmake() {
    cmakew \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_CXXLIBS=ON \
    -DWITH_ASM=OFF \
    -DWITH_OGG=ON \
    -DOGG_INCLUDE_DIR="$libogg_INCLUDE_DIR" \
    -DOGG_LIBRARY="$libogg_LIBRARY_DIR/libogg.so"
}

build_with_configure() {
    configure \
        --with-ogg="$libogg_INSTALL_DIR" \
        --disable-oggtest \
        --disable-valgrind-testing \
        --disable-thorough-tests \
        --disable-exhaustive-tests \
        --disable-examples \
        --disable-xmms-plugin \
        --disable-doxygen-docs
}

prepare_with_cmake() {
    cat > src/share/getopt/CMakeLists.txt <<EOF
check_include_file("string.h" HAVE_STRING_H)
add_library(getopt STATIC getopt.c getopt1.c)
EOF
}

prepare_with_configure() {
    ./autogen.sh
}

