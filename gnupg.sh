package set summary "GNU Pretty Good Privacy (PGP) package"
package set webpage "https://gnupg.org"
package set src.url "https://gnupg.org/ftp/gcrypt/gnupg/gnupg-2.2.23.tar.bz2"
package set src.sum "10b55e49d78b3e49f1edb58d7541ecbdad92ddaeeb885b6f486ed23d1cd1da5c"
package set dep.pkg "libgpg-error libgcrypt libassuan libksba npth libiconv bzip2 readline"
package set bsystem "configure"

build() {
    configure \
        --disable-assert \
        --disable-gcc-warnings \
        --enable-threads=posix \
        --with-included-regex \
        --with-gpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --with-libgcrypt-prefix="$libgcrypt_INSTALL_DIR" \
        --with-libassuan-prefix="$libassuan_INSTALL_DIR" \
        --with-ksba-prefix="$libksba_INSTALL_DIR" \
        --with-npth-prefix="$npth_INSTALL_DIR" \
        --with-bzip2="$bzip2_INSTALL_DIR" \
        --with-readline="$readline_INSTALL_DIR" \
        --with-libiconv-prefix="$libincov_INSTALL_DIR"
}
