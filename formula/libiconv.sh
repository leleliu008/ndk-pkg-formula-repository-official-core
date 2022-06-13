pkg_set summary "charset conversion library"
pkg_set webpage "https://www.gnu.org/software/libiconv"
pkg_set src.url "https://ftp.gnu.org/gnu/libiconv/libiconv-1.17.tar.gz"
pkg_set src.sha "8f74213b56238c85a50a5329f77e06198771e70dd9a739779f4c02f65d971313"
pkg_set license "GPL-3.0-or-later LGPL-2.0-or-later"
pkg_set bsystem "configure"

build() {
    configure \
       --enable-relocatable \
       --enable-extra-encodings &&
    install_pc_files
}

install_pc_files() {
    for item in iconv charset
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
Cflags: -I\${includedir}
EOF
    done
}
