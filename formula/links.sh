package set summary "Lynx-like WWW browser that supports tables, menus, etc."
package set webpage "http://links.twibright.com"
package set src.url "https://fossies.org/linux/www/links-2.25.tar.bz2"
package set src.sum "2dd78508698e8279ef4f09a3a2a21e9595040113402da6c553974414fb49dd2c"
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
