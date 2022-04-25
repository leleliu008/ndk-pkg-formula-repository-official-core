pkg_set summary "Embedded SSL Library written in C"
pkg_set webpage "https://www.wolfssl.com"
pkg_set git.url "https://github.com/wolfSSL/wolfssl.git"
pkg_set src.url "https://github.com/wolfSSL/wolfssl/archive/refs/tags/v5.2.0-stable.tar.gz"
pkg_set src.sha "409b4646c5f54f642de0e9f3544c3b83de7238134f5b1ff93fb44527bf119d05"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.cmd "glibtoolize:libtoolize"
pkg_set bsystem "autogen"

build() {
    configure \
        --disable-asm \
        --disable-bump \
        --disable-examples \
        --disable-fortress \
        --disable-md5 \
        --disable-sniffer \
        --disable-webserver \
        --enable-static \
        --enable-shared \
        --enable-aesccm \
        --enable-aesgcm \
        --enable-alpn \
        --enable-blake2 \
        --enable-camellia \
        --enable-certgen \
        --enable-certreq \
        --enable-chacha \
        --enable-crl \
        --enable-crl-monitor \
        --enable-curve25519 \
        --enable-dtls \
        --enable-dh \
        --enable-ecc \
        --enable-eccencrypt \
        --enable-ed25519 \
        --enable-filesystem \
        --enable-hc128 \
        --enable-hkdf \
        --enable-inline \
        --enable-ipv6 \
        --enable-jni \
        --enable-keygen \
        --enable-ocsp \
        --enable-opensslextra \
        --enable-poly1305 \
        --enable-psk \
        --enable-rabbit \
        --enable-ripemd \
        --enable-savesession \
        --enable-savecert \
        --enable-sessioncerts \
        --enable-sha512 \
        --enable-sni \
        --enable-supportedcurves \
        --enable-tls13 \
        --enable-sp \
        --enable-fastmath \
        --enable-fasthugemath
}
