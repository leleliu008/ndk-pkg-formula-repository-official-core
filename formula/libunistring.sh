pkg_set summary "C string library for manipulating Unicode strings"
pkg_set webpage "https://www.gnu.org/software/libunistring"
pkg_set src.url "https://ftp.gnu.org/gnu/libunistring/libunistring-1.0.tar.gz"
pkg_set src.sha "3c0184c0e492d7c208ce31d25dd1d2c58f0c3ed6cbbe032c5b248cddad318544"
pkg_set license "GPL-2.0-only"
pkg_set dep.pkg "libiconv"
pkg_set bsystem "configure"

build() {
    configure \
        --with-libiconv-prefix="$libiconv_INSTALL_DIR" \
        --enable-threads=posix \
        --enable-relocatable \
        --enable-namespacing
}
