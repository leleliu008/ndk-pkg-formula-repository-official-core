package set summary "Lynx-like WWW browser that supports tables, menus, etc."
package set webpage "http://links.twibright.com"
package set src.url "http://links.twibright.com/download/links-2.26.tar.gz"
#package set src.url "https://fossies.org/linux/www/links-2.26.tar.gz"
package set src.sum "c42a4dba21dcfb4525034139489cd47f30aa0c5f9d05b37d4e2eaaea943fe2b1"
package set license "GPL-2.0-or-later"
package set dep.pkg "xz bzip2 libtiff libjpeg-turbo openssl"
package set bsystem "make"
package set binbstd "yes"

build() {
    # configure [options] [host]
    run ./configure \
        --host="$TARGET_TRIPLE" \
        --prefix="$TARGET_INSTALL_DIR" \
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
