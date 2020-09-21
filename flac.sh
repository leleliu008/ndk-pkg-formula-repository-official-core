summary="Free lossless audio codec"
homepage="https://xiph.org/flac"
url="https://github.com/xiph/flac/archive/1.3.3.tar.gz"
sha256="668cdeab898a7dd43cf84739f7e1f3ed6b35ece2ef9968a5c7079fe9adfe1689"
version="1.3.3"
dependencies="libogg libiconv"

# https://github.com/android/ndk/issues/702
# iconv_t iconv_open(const char* __src_encoding, const char* __dst_encoding) __INTRODUCED_IN(28);
# size_t  iconv(iconv_t __converter, char** __src_buf, size_t* __src_bytes_left, char** __dst_buf, size_t* __dst_bytes_left) __INTRODUCED_IN(28);
# int iconv_close(iconv_t __converter) __INTRODUCED_IN(28);

# int fseeko(FILE* __fp, off_t __offset, int __whence) __RENAME(fseeko64) __INTRODUCED_IN(24);
# off_t ftello(FILE* __fp) __RENAME(ftello64) __INTRODUCED_IN(24);
prepare() {
    sed_in_place 's/printf(usage)/printf("%s", usage)/g'                   src/utils/flacdiff/main.cpp &&
    sed_in_place 's/fprintf(stderr, usage)/fprintf(stderr, "%s", usage)/g' src/utils/flacdiff/main.cpp &&
    cat > src/share/getopt/CMakeLists.txt <<EOF
check_include_file("string.h" HAVE_STRING_H)
add_library(getopt STATIC getopt.c getopt1.c)
EOF
}

build() {
    cmake \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_CXXLIBS=ON \
    -DWITH_ASM=OFF \
    -DWITH_OGG=ON \
    -DOGG_INCLUDE_DIR="$libogg_DIR_INCLUDE" \
    -DOGG_LIBRARY="$libogg_DIR_LIB/libogg.so"
}

build2() {
    [ -d "$DIR_BUILD" ] || mkdir -p "$DIR_BUILD"
    cd "$DIR_BUILD"
    "$DIR_SRC/configure" \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-ogg="$libogg_DIR_INSTALL_PREFIX" \
        --disable-rpath \
        --disable-oggtest \
        --disable-valgrind-testing \
        --disable-thorough-tests \
        --disable-exhaustive-tests \
        --disable-examples \
        --disable-xmms-plugin \
        --disable-doxygen-docs \
        --disable-debug \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
