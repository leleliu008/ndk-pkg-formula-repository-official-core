package set summary "Embedded SSL Library written in C"
package set webpage "https://www.wolfssl.com"
package set git.url "https://github.com/wolfSSL/wolfssl.git"
package set src.url "https://github.com/wolfSSL/wolfssl/archive/refs/tags/v5.1.0-stable.tar.gz"
package set src.sum "3791e62ef98e3b054968729e7ebd935930562bc4453fe1ee40a1983589112e5e"
package set dep.cmd "glibtoolize:libtoolize"
package set bsystem "autogen"

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
