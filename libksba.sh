package set summary "X.509 and CMS library"
package set webpage "https://www.gnupg.org/related_software/libksba"
package set src.url "https://gnupg.org/ftp/gcrypt/libksba/libksba-1.4.0.tar.bz2"
package set src.sum "bfe6a8e91ff0f54d8a329514db406667000cb207238eded49b599761bfca41b6"
package set license "GPL-2.0"
package set bsystem "configure"
package set dep.pkg "libgpg-error"

build() {
    configure \
        --with-libgpg-error-prefix="$libgpg_error_INSTALL_DIR" \
        --enable-optimization \
        --disable-valgrind-tests \
        --disable-gcov
}
