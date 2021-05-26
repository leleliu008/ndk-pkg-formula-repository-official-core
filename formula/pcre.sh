package set summary "Perl compatible regular expressions library"
package set webpage "https://www.pcre.org"
package set src.url "https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.bz2"
package set src.sum "19108658b23b3ec5058edc9f66ac545ea19f9537234be1ec62b714c84399366d"
package set bsystem "cmake"
package set dep.pkg "zlib bzip2"

build() {
    cmakew \
    -DPCRE_BUILD_PCRE8=ON \
    -DPCRE_BUILD_PCRE16=ON \
    -DPCRE_BUILD_PCRE32=ON \
    -DPCRE_BUILD_PCREGREP=ON \
    -DPCRE_BUILD_PCRECPP=OFF \
    -DPCRE_BUILD_TESTS=OFF \
    -DPCRE_SUPPORT_VALGRIND=OFF \
    -DPCRE_SUPPORT_LIBZ=ON \
    -DPCRE_SUPPORT_LIBBZ2=ON \
    -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
    -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so" \
    -DBZIP2_INCLUDE_DIR="$bzip2_INCLUDE_DIR" \
    -DBZIP2_LIBRARY_RELEASE="$bzip2_LIBRARY_DIR/libbz2.so" &&
    install_pc_files
}

install_pc_files() {
    for item in pcre pcre16 pcre32 pcreposix
    do
        install_pc_file "lib$item" <<EOF
prefix=$ABI_INSTALL_DIR
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include

Name: lib$item
URL: ${PACKAGE_WEBPAGE}
Description: ${PACKAGE_SUMMARY}
Version: ${PACKAGE_VERSION}
Libs: -L\${libdir} -l$item
Libs.private: -D_THREAD_SAFE -pthread
Cflags: -I\${includedir}
EOF
    done
}
