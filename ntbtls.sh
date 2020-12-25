summary "Not Too Bad TLS library"
webpage "https://gnupg.org/software/ntbtls/index.html"
src_url "https://gnupg.org/ftp/gcrypt/ntbtls/ntbtls-0.2.0.tar.bz2"
src_sum "649fe74a311d13e43b16b26ebaa91665ddb632925b73902592eac3ed30519e17"
depends "libgpg-error libgcrypt libksba"

build() {
    configure \
        --with-zlib \
        --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --with-libgcrypt-prefix="$libgcrypt_INSTALL_DIR" \
        --with-libksba-prefix="$libksba_INSTALL_DIR"
}
