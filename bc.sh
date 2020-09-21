summary="Arbitrary precision numeric processing language"
homepage="https://www.gnu.org/software/bc"
url="https://ftp.gnu.org/gnu/bc/bc-1.07.1.tar.gz"
sha256="62adfca89b0a1c0164c2cdca59ca210c1d44c3ffc46daf9931cf4942664cb02a"
license="GPL-3.0"
dependencies="readline"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --without-libedit \
        --with-readline="$readline_DIR_INSTALL_PREFIX" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
    make install
}
