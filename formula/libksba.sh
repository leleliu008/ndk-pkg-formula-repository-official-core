package set summary "X.509 and CMS library"
package set webpage "https://www.gnupg.org/related_software/libksba"
package set src.url "https://gnupg.org/ftp/gcrypt/libksba/libksba-1.6.0.tar.bz2"
package set src.sum "dad683e6f2d915d880aa4bed5cea9a115690b8935b78a1bbe01669189307a48b"
package set license "GPL-2.0"
package set dep.pkg "libgpg-error"
package set bsystem "configure"

build() {
    configure \
        --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --enable-optimization \
        --disable-valgrind-tests \
        --disable-gcov
}
