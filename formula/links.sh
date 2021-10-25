package set summary "Lynx-like WWW browser that supports tables, menus, etc."
package set webpage "http://links.twibright.com"
package set src.url "http://links.twibright.com/download/links-2.21.tar.bz2"
package set src.sum "285eed8591c7781ec26213df82786665aaa1b9286782e8a7a1a7e2a6e1630d63"
package set license "GPL-2.0"
package set bsystem "make"
package set dep.pkg "xz bzip2 libtiff libjpeg-turbo openssl"

package set binsrcd 'yes'

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
