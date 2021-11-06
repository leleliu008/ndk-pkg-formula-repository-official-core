package set summary "Lynx-like WWW browser that supports tables, menus, etc."
package set webpage "http://links.twibright.com"
package set src.url "http://links.twibright.com/download/links-2.25.tar.gz"
package set src.sum "5c0b3b0b8fe1f3c8694f5fb7fbdb19c63278ac68ae4646da69b49640b20283b1"
package set license "GPL-2.0"
package set dep.pkg "xz bzip2 libtiff libjpeg-turbo openssl"
package set bsystem "make"
package set binsrcd "yes"

build() {
    # configure [options] [host]
    run ./configure \
        --host="$TARGET_TRIPLE" \
        --prefix="$ABI_INSTALL_DIR" \
        --enable-ipv6 \
        --enable-utf8 \
        --disable-graphics \
        --without-x \
        --with-zlib \
        --with-lzma \
        --with-bzip2 \
        --with-libtiff \
        --with-libjpeg \
        --with-ssl="$openssl_INSTALL_DIR" &&
    makew clean &&
    makew &&
    makew install &&
    makew distclean
}
