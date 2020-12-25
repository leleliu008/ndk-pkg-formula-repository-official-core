summary "C library for reading, creating, and modifying zip archives"
webpage "https://libzip.org"
src_url "https://libzip.org/download/libzip-1.7.0.tar.xz"
src_sum "d26b2952426d2518f3db5cdeda4fe3cd668fc5bb38a598781e4d1d3f7f8ca7be"

build() {
    cmake \
    -DENABLE_GNUTLS=OFF \
    -DENABLE_OPENSSL=OFF \
    -DENABLE_MBEDTLS=OFF \
    -DENABLE_COMMONCRYPTO=OFF \
    -DENABLE_WINDOWS_CRYPTO=OFF \
    -DBUILD_DOC=OFF \
    -DBUILD_TOOLS=OFF \
    -DBUILD_REGRESS=OFF \
    -DBUILD_EXAMPLES=OFF
}
