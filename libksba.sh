summary "X.509 and CMS library"
webpage "https://www.gnupg.org/related_software/libksba"
src_url "https://gnupg.org/ftp/gcrypt/libksba/libksba-1.4.0.tar.bz2"
src_sum "bfe6a8e91ff0f54d8a329514db406667000cb207238eded49b599761bfca41b6"
license "GPL-2.0"
depends "libgpg-error"

build() {
    configure \
        --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --enable-optimization \
        --disable-valgrind-tests \
        --disable-gcov
}
