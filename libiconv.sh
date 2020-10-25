summary="charset conversion library"
homepage="https://www.gnu.org/software/libiconv"
url="https://ftp.gnu.org/gnu/libiconv/libiconv-1.16.tar.gz"
sha256="e6a1b1b589654277ee790cce3734f07876ac4ccfaecbee8afa0b649cf529cc04"

build() {
    configure \
       --enable-relocatable \
       --enable-extra-encodings &&
    gen_pc_files
}

gen_pc_files() {
    mkdir "$ABI_INSTALL_DIR/lib/pkgconfig/" || return 1
    for item in iconv charset
    do
        cat > "$ABI_INSTALL_DIR/lib/pkgconfig/lib$item.pc" <<EOF
prefix=$ABI_INSTALL_DIR
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include

Name: lib$item
URL: https://www.gnu.org/software/libiconv
Description: charset conversion library
Version: $version
Libs: -L\${libdir} -liconv
Cflags: -I\${includedir}
EOF
    done
}
