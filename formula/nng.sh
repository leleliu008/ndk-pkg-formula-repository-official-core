package set summary "Nanomsg-next-generation -- light-weight brokerless messaging"
package set webpage "https://nng.nanomsg.org"
package set src.git "https://github.com/nanomsg/nng.git"
package set src.url "https://github.com/nanomsg/nng/archive/v1.5.1.tar.gz"
package set src.sum "31656c22d0b2c5675360b50fd28b33f9471aa6e80c131239bfbc23bc912411bf"
package set license "MIT"
package set dep.pkg "mbedtls"
package set bsystem "cmake"

build() {
    cmakew \
        -DNNG_TESTS=OFF \
        -DNNG_ENABLE_TLS=ON \
        -DNNG_ENABLE_HTTP=ON \
        -DMBEDTLS_TLS_LIBRARY="$mbedtls_LIBRARY_DIR/libmbedtls.so" \
        -DMBEDTLS_CRYPTO_LIBRARY="$mbedtls_LIBRARY_DIR/libmbedcrypto.so" \
        -DMBEDTLS_X509_LIBRARY="$mbedtls_LIBRARY_DIR/libmbedx509.so" \
        -DMBEDTLS_INCLUDE_DIR="$mbedtls_INCLUDE_DIR"
}
