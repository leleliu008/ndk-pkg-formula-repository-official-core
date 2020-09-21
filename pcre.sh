summary="Perl compatible regular expressions library"
homepage="https://www.pcre.org"
url="https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.bz2"
sha256="19108658b23b3ec5058edc9f66ac545ea19f9537234be1ec62b714c84399366d"
dependencies="bzip2"

#https://github.com/android/ndk/issues/1179
build() {
    cmake \
    -DPCRE_BUILD_PCRE8=ON \
    -DPCRE_BUILD_PCRE16=ON \
    -DPCRE_BUILD_PCRE32=ON \
    -DPCRE_BUILD_PCREGREP=ON \
    -DPCRE_BUILD_PCRECPP=OFF \
    -DPCRE_BUILD_TESTS=OFF \
    -DPCRE_SUPPORT_VALGRIND=OFF \
    -DPCRE_SUPPORT_LIBZ=ON \
    -DPCRE_SUPPORT_LIBBZ2=ON \
    -DBZIP2_INCLUDE_DIR="$bzip2_DIR_INCLUDE" \
    -DBZIP2_LIBRARY_RELEASE="$bzip2_DIR_LIB/libbz2.so" \
    -DZLIB_LIBRARY_RELEASE="$FILE_PATH_LIBZ_SO" &&
    gen_pc_files
}

gen_pc_files() {
    eval $(grep 'PACKAGE_VERSION=' configure)
    
    for item in pcre pcre16 pcre32 pcreposix
    do
        DIR_PC_FILE_PCRE="$DIR_INSTALL_PREFIX/lib/pkgconfig"
        
        [ -d "$DIR_PC_FILE_PCRE" ] || mkdir -p "$DIR_PC_FILE_PCRE"
        [ -f "$DIR_PC_FILE_PCRE/lib$item.pc" ] && continue

        cat > "$DIR_PC_FILE_PCRE/lib$item.pc" <<EOF
prefix=$DIR_INSTALL_PREFIX
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include

Name: lib$item
URL: http://www.pcre.org/
Description: PCRE - Perl compatible regular expressions C library with 8 bit character support
Version: $PACKAGE_VERSION
Libs: -L\${libdir} -l$item
Libs.private: -D_THREAD_SAFE
Cflags: -I\${includedir}
EOF
    done
}
