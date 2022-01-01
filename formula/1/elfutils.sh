package set summary "utilities and libraries to read, create and modify ELF binary files"
package set webpage "https://sourceware.org/elfutils"
package set git.url "git://sourceware.org/git/elfutils.git"
package set src.url "https://sourceware.org/elfutils/ftp/0.185/elfutils-0.185.tar.bz2"
package set src.sum "dc8d3e74ab209465e7f568e1b3bb9a5a142f8656e2b57d10049a73da2ae6b5a6"
package set bsystem "configure"

build() {
    configure \
        --enable-install-elfh \
        --with-zlib="$zlib_INSTALL_DIR" \
        --with-lzma="$xz_INSTALL_DIR" \
        --with-bzlib="$bzlip2_INSTALL_DIR"
}
