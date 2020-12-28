summary "Cryptographic library based on the code from GnuPG"
webpage "https://gnupg.org/related_software/libgcrypt"
src_url "https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.8.6.tar.bz2"
src_sum "0cba2700617b99fc33864a0c16b1fa7fdf9781d9ed3509f5d767178e5fd7b975"
depends "libgpg-error"

build() {
    case $BUILD_FOR_ARCH in
        *86*) EXTRA_OPT='--disable-asm' ;;
        *)    EXTRA_OPT='--enable-asm'  ;;
    esac
    
    configure \
        --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --disable-doc \
        --enable-optimization \
        "$EXTRA_OPT"
}
