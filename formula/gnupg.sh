pkg_set summary "GNU Pretty Good Privacy (PGP) package"
pkg_set webpage "https://gnupg.org"
pkg_set git.url "https://dev.gnupg.org/source/gnupg.git"
pkg_set src.url "https://gnupg.org/ftp/gcrypt/gnupg/gnupg-2.3.6.tar.bz2"
pkg_set src.sha "21f7fe2fc5c2f214184ab050977ec7a8e304e58bfae2ab098fec69f8fabda9c1"
pkg_set license "GPL-3.0-or-later|COPYING|https://dev.gnupg.org/source/gnupg/browse/master/COPYING"
pkg_set dep.pkg "libgpg-error libgcrypt libassuan libksba npth libiconv bzip2 readline"
pkg_set bsystem "configure"

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
