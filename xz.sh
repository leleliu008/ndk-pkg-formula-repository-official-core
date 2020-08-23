summary="General-purpose data compression with high compression ratio"
homepage="https://tukaani.org/xz"
url="https://tukaani.org/xz/xz-5.2.5.tar.gz"
sha256="f6f4910fd033078738bd82bfba4f49219d03b17eb0794eb91efbae419f4aba10"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --disable-debug \
        --disable-werror \
        --disable-nls \
        --disable-external-sha256 \
        --disable-static \
        --enable-shared \
        --enable-largefile \
        --enable-threads=posix \
        --enable-assembler \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
