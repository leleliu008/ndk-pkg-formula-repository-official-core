summary="X.509 and CMS library"
homepage="https://www.gnupg.org/related_software/libksba"
url="https://gnupg.org/ftp/gcrypt/libksba/libksba-1.4.0.tar.bz2"
sha256="bfe6a8e91ff0f54d8a329514db406667000cb207238eded49b599761bfca41b6"
license="GPL-2.0"
dependencies="libgpg-error"

build() {
    configure \
        --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --enable-optimization \
        --disable-valgrind-tests \
        --disable-gcov
}
