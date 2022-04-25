pkg_set summary "Perl compatible regular expressions library"
pkg_set webpage "https://www.pcre.org"
pkg_set src.url "https://downloads.sourceforge.net/project/pcre/pcre/8.45/pcre-8.45.tar.bz2"
pkg_set src.sha "4dae6fdcd2bb0bb6c37b5f97c33c2be954da743985369cddac3546e3218bffb8"
pkg_set license "BSD-3-Clause;LICENCE;"
pkg_set dep.pkg "zlib bzip2"
pkg_set bsystem "cmake"

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
        -DPCRE_SUPPORT_LIBBZ2=ON &&
    install_pc_files
}

install_pc_files() {
    for item in pcre pcre16 pcre32 pcreposix
    do
        install_pc_file "lib$item" <<EOF
prefix=$TARGET_INSTALL_DIR
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
