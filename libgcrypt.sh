summary="Cryptographic library based on the code from GnuPG"
homepage="https://gnupg.org/related_software/libgcrypt"
url="https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.8.6.tar.bz2"
sha256="0cba2700617b99fc33864a0c16b1fa7fdf9781d9ed3509f5d767178e5fd7b975"
dependencies="libgpg-error"

build() {
    case $TARGET_ARCH in
        x86|x86_64)
            EXTRA_OPT='--disable-asm';;
        *)  EXTRA_OPT='--enable-asm'
    esac
    
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --with-libgpg-error-prefix="$libgpg_error_DIR_INSTALL_PREFIX" \
        --disable-doc \
        --enable-static \
        --enable-shared \
        --enable-optimization \
        "$EXTRA_OPT" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
