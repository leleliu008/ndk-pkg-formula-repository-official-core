package set summary "GNU Pretty Good Privacy (PGP) package"
package set webpage "https://gnupg.org"
package set git.url "https://dev.gnupg.org/source/gnupg.git"
package set src.url "https://gnupg.org/ftp/gcrypt/gnupg/gnupg-2.3.4.tar.bz2"
package set src.sum "f3468ecafb1d7f9ad7b51fd1db7aebf17ceb89d2efa8a05cf2f39b4d405402ae"
package set license "GPL-3.0-or-later;COPYING;https://dev.gnupg.org/source/gnupg/browse/master/COPYING"
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
