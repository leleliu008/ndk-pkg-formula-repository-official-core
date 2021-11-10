package set summary "Cryptographic library based on the code from GnuPG"
package set webpage "https://gnupg.org/related_software/libgcrypt"
package set src.url "https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.9.4.tar.bz2"
package set src.sum "ea849c83a72454e3ed4267697e8ca03390aee972ab421e7df69dfe42b65caaf7"
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
