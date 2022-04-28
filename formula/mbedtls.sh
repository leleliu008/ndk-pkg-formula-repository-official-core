pkg_set summary "Cryptographic and SSL/TLS library"
pkg_set webpage "https://tls.mbed.org"
pkg_set git.url "https://github.com/Mbed-TLS/mbedtls.git"
pkg_set src.url "https://github.com/Mbed-TLS/mbedtls/archive/refs/tags/v3.0.0.tar.gz"
pkg_set src.sha "525bfde06e024c1218047dee1c8b4c89312df1a4b5658711009086cda5dfaa55"
pkg_set dep.pkg "zlib"
pkg_set bsystem "cmake"
pkg_set license "Apache-2.0|LICENSE|https://raw.githubusercontent.com/Mbed-TLS/mbedtls/development/LICENSE"
pkg_set developer "|mbed-tls@lists.trustedfirmware.org|Mbed-TLS|https://github.com/Mbed-TLS"

build() {
    cmakew \
        -DUSE_STATIC_MBEDTLS_LIBRARY=ON \
        -DUSE_SHARED_MBEDTLS_LIBRARY=ON \
        -DUSE_PKCS11_HELPER_LIBRARY=OFF \
        -DUNSAFE_BUILD=OFF \
        -DMBEDTLS_FATAL_WARNINGS=OFF \
        -DINSTALL_MBEDTLS_HEADERS=ON \
        -DENABLE_PROGRAMS=ON \
        -DENABLE_TESTING=OFF \
        -DENABLE_ZLIB_SUPPORT=ON
}
