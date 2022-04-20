package set summary "Cryptographic library based on the code from GnuPG"
package set webpage "https://gnupg.org/related_software/libgcrypt"
package set git.url "https://github.com/gpg/libgcrypt.git"
package set src.url "https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.10.1.tar.bz2"
package set src.sum "ef14ae546b0084cd84259f61a55e07a38c3b53afc0f546bffcef2f01baffe9de"
package set license "GPL-2.0-only"
package set dep.pkg "libgpg-error"
package set bsystem "configure"

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
