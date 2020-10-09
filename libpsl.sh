summary="C library for the Public Suffix List"
homepage="https://rockdaboot.github.io/libpsl"
url="https://github.com/rockdaboot/libpsl/releases/download/0.21.1/libpsl-0.21.1.tar.gz"
sha256="ac6ce1e1fbd4d0254c4ddb9d37f1fa99dec83619c1253328155206b896210d4c"
license="MIT"
dependencies="libidn2"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-static \
        --enable-shared \
        --disable-rpath \
        --disable-nls\
        --disable-valgrind-tests \
        --enable-runtime=libidn2 \
        --enable-builtin=libidn2 \
        CC="$CC" \
        CFLAGS="$CFLAGS $CPPFLAGS -Du8_tolower=libunistring_u8_tolower -Du8_strlen=libunistring_u8_strlen -Duninorm_nfkc=libunistring_uninorm_nfkc" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAG" \
        LDFLAGS="$LDFLAGS -lunistring -liconv" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
