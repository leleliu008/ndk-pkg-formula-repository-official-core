summary "C library implementing the SSH2 protocol"
webpage "https://libssh2.org"
src_url "https://libssh2.org/download/libssh2-1.9.0.tar.gz"
src_sum "d5fb8bd563305fd1074dda90bd053fb2d29fc4bce048d182f96eaa466dfadafd"
depends "openssl zlib"

build() {
    export LDFLAGS="$LDFLAGS -lz -lssl -lcrypto"
    configure \
        --disable-examples-build \
        --disable-werror \
        --with-crypto=openssl \
        --with-libssl-prefix="$openssl_INSTALL_DIR" \
        --with-libz \
        --with-libz-prefix="$zlib_INSTALL_DIR"
}
