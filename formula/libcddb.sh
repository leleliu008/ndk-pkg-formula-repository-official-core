pkg_set summary "CDDB server access library"
pkg_set webpage "https://libcddb.sourceforge.io"
pkg_set src.url "https://downloads.sourceforge.net/project/libcddb/libcddb/1.3.2/libcddb-1.3.2.tar.bz2"
pkg_set src.sha "35ce0ee1741ea38def304ddfe84a958901413aa829698357f0bee5bb8f0a223b"
pkg_set license "LGPL-2.0-or-later|COPYING|https://raw.githubusercontent.com/Distrotech/libcddb/master/COPYING"
pkg_set dep.pkg "libiconv"
pkg_set bsystem "configure"

build() {
    configure --with-libiconv-prefix="$libiconv_INSTALL_DIR"
}
