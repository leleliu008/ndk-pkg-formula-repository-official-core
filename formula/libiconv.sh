package set summary "charset conversion library"
package set webpage "https://www.gnu.org/software/libiconv"
package set src.url "https://ftp.gnu.org/gnu/libiconv/libiconv-1.16.tar.gz"
package set src.sum "e6a1b1b589654277ee790cce3734f07876ac4ccfaecbee8afa0b649cf529cc04"
package set bsystem "configure"

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
