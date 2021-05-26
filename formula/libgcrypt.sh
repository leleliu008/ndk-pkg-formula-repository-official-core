package set summary "Cryptographic library based on the code from GnuPG"
package set webpage "https://gnupg.org/related_software/libgcrypt"
package set src.url "https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.8.6.tar.bz2"
package set src.sum "0cba2700617b99fc33864a0c16b1fa7fdf9781d9ed3509f5d767178e5fd7b975"
package set bsystem "configure"
package set dep.pkg "libgpg-error"

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
