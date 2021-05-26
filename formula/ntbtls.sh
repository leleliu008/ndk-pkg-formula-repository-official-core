package set summary "Not Too Bad TLS library"
package set webpage "https://gnupg.org/software/ntbtls/index.html"
package set src.url "https://gnupg.org/ftp/gcrypt/ntbtls/ntbtls-0.2.0.tar.bz2"
package set src.sum "649fe74a311d13e43b16b26ebaa91665ddb632925b73902592eac3ed30519e17"
package set dep.pkg "zlib libgpg-error libgcrypt libksba"
package set bsystem "configure"

build() {
    configure \
        --with-zlib="$zlib_INSTALL_DIR" \
        --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --with-libgcrypt-prefix="$libgcrypt_INSTALL_DIR" \
        --with-libksba-prefix="$libksba_INSTALL_DIR" \
        ac_cv_path_KSBA_CONFIG="$libksba_INSTALL_DIR/bin/ksba-config"
}
