package set summary "utilities and libraries to read, create and modify ELF binary files"
package set webpage "https://sourceware.org/elfutils"
package set src.git "git://sourceware.org/git/elfutils.git"
package set src.url "https://sourceware.org/elfutils/ftp/0.182/elfutils-0.182.tar.bz2"
package set src.sum "ecc406914edf335f0b7fc084ebe6c460c4d6d5175bfdd6688c1c78d9146b8858"

build() {
    configure \
        --enable-install-elfh \
        --with-zlib="$zlib_INSTALL_DIR" \
        --with-lzma="$xz_INSTALL_DIR" \
        --with-bzlib="$bzlip2_INSTALL_DIR"
}
