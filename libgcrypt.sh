summary  "Cryptographic library based on the code from GnuPG"
homepage "https://gnupg.org/related_software/libgcrypt"
url      "https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.8.6.tar.bz2"
sha256   "0cba2700617b99fc33864a0c16b1fa7fdf9781d9ed3509f5d767178e5fd7b975"
dependencies "libgpg-error"

build() {
    case $BUILD_FOR_ABI in
        x86|x86_64)
            EXTRA_OPT='--disable-asm';;
        *)  EXTRA_OPT='--enable-asm'
    esac
    
    configure \
        --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --disable-doc \
        --enable-optimization \
        "$EXTRA_OPT"
}
