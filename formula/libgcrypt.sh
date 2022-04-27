pkg_set summary "Cryptographic library based on the code from GnuPG"
pkg_set webpage "https://gnupg.org/related_software/libgcrypt"
pkg_set git.url "https://dev.gnupg.org/source/libgcrypt.git"
pkg_set src.url "https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.10.1.tar.bz2"
pkg_set src.sha "ef14ae546b0084cd84259f61a55e07a38c3b53afc0f546bffcef2f01baffe9de"
pkg_set license "LGPL-2.1-or-later|COPYING.LIB|https://dev.gnupg.org/source/libgcrypt/browse/master/COPYING.LIB"
pkg_set dep.pkg "libgpg-error"
pkg_set bsystem "configure"

build() {
    case $TARGET_OS_ARCH in
        *86*) EXTRA_OPT='--disable-asm' ;;
        *)    EXTRA_OPT='--enable-asm'  ;;
    esac
    
    configure \
        --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --disable-doc \
        --enable-optimization \
        "$EXTRA_OPT"
}
