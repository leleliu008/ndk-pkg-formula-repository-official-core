pkg_set summary "X.509 and CMS library"
pkg_set webpage "https://www.gnupg.org/related_software/libksba"
pkg_set git.url "https://dev.gnupg.org/source/libksba.git"
pkg_set src.url "https://gnupg.org/ftp/gcrypt/libksba/libksba-1.6.0.tar.bz2"
pkg_set src.sha "dad683e6f2d915d880aa4bed5cea9a115690b8935b78a1bbe01669189307a48b"
pkg_set license "LGPL-3.0-or-later|COPYING.LGPLv3|https://dev.gnupg.org/source/libksba/browse/master/COPYING.LGPLv3"
pkg_set dep.pkg "libgpg-error"
pkg_set bsystem "configure"

build() {
    configure \
        --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --enable-optimization \
        --disable-valgrind-tests \
        --disable-gcov
}
