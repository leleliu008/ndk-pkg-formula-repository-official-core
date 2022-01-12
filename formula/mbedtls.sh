package set summary "Cryptographic & SSL/TLS library"
package set webpage "https://tls.mbed.org"
package set src.url "https://github.com/ARMmbed/mbedtls/archive/refs/tags/v3.1.0.tar.gz"
package set src.sum "b02df6f68dd1537e115a8497d5c173dc71edc55ad084756e57a30f951b725acd"
package set dep.pkg "zlib"
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
        -DENABLE_ZLIB_SUPPORT=ON \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.a"
}
