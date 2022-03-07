package set summary "Cryptographic library based on the code from GnuPG"
package set webpage "https://gnupg.org/related_software/libgcrypt"
package set git.url "https://github.com/gpg/libgcrypt.git"
package set src.url "https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.10.0.tar.bz2"
package set src.sum "6a00f5c05caa4c4acc120c46b63857da0d4ff61dc4b4b03933fa8d46013fae81"
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
