pkg_set summary "Free lossless audio codec"
pkg_set webpage "https://xiph.org/flac"
pkg_set git.url "https://github.com/xiph/flac.git"
pkg_set src.url "https://github.com/xiph/flac/archive/1.3.4.tar.gz"
pkg_set src.sha "53e9dbe3ae54a9f42c1e65afe7f516c02d8393c0c6d56bc455c15e1e044069a9"
pkg_set license "GFDL-1.2-or-later|COPYING.FDL|https://raw.githubusercontent.com/xiph/flac/master/COPYING.FDL"
pkg_set dep.cmd "glibtoolize:libtoolize libtool"
pkg_set dep.pkg "libogg libiconv"
pkg_set bsystem "autogen"

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
    -DWITH_OGG=ON
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

