pkg_set summary "charset conversion library"
pkg_set webpage "https://www.gnu.org/software/libiconv"
pkg_set src.url "https://ftp.gnu.org/gnu/libiconv/libiconv-1.16.tar.gz"
pkg_set src.sha "e6a1b1b589654277ee790cce3734f07876ac4ccfaecbee8afa0b649cf529cc04"
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
