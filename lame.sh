summary="High quality MPEG Audio Layer III (MP3) encoder"
homepage="https://lame.sourceforge.io"
url="https://downloads.sourceforge.net/sourceforge/lame/lame-3.100.tar.gz"
sha256="ddfe36cab873794038ae2c1210557ad34857a4b6bdc515785d1da9e175b1da1e"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --without-dmalloc \
        --disable-debug \
        --enable-nasm \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" && \
    make clean &&
    make install
}
