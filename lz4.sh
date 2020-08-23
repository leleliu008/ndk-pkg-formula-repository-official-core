summary="Extremely Fast Compression algorithm"
homepage="https://lz4.org"
url="https://github.com/lz4/lz4/archive/v1.9.2.tar.gz"
sha256="658ba6191fa44c92280d4aa2c271b0f4fbc0e34d249578dd05e50e76d0e5efcc"

build() {
    unset TARGET_ARCH
    make install \
        TARGET_OS='Linux' \
        PREFIX="$DIR_INSTALL_PREFIX" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        BUILD_STATIC=yes \
        BUILD_SHARED=yes
}
