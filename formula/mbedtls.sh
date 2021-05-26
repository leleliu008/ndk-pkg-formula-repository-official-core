package set summary "Cryptographic & SSL/TLS library"
package set webpage "https://tls.mbed.org"
package set src.url "https://github.com/ARMmbed/mbedtls/archive/mbedtls-2.23.0.tar.gz"
package set src.sum "5c8998217402aa1fc734f4afaeac38fad2421470fac4b3abc112bd46391054fe"
package set bsystem "cmake"

build() {
    cmakew \
    -DUSE_STATIC_MBEDTLS_LIBRARY=OFF \
    -DUSE_SHARED_MBEDTLS_LIBRARY=ON \
    -DUSE_PKCS11_HELPER_LIBRARY=OFF \
    -DUNSAFE_BUILD=OFF \
    -DMBEDTLS_FATAL_WARNINGS=OFF \
    -DINSTALL_MBEDTLS_HEADERS=ON \
    -DENABLE_PROGRAMS=ON \
    -DENABLE_TESTING=OFF \
    -DENABLE_ZLIB_SUPPORT=ON
}
