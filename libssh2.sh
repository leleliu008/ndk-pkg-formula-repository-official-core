package set summary "C library implementing the SSH2 protocol"
package set webpage "https://libssh2.org"
package set src.url "https://libssh2.org/download/libssh2-1.9.0.tar.gz"
package set src.sum "d5fb8bd563305fd1074dda90bd053fb2d29fc4bce048d182f96eaa466dfadafd"
package set bsystem "configure"
package set dep.pkg "zlib openssl"
package set ldflags "-lz -lssl -lcrypto"

build() {
    configure \
        --disable-examples-build \
        --disable-werror \
        --with-crypto=openssl \
        --with-libssl-prefix="$openssl_INSTALL_DIR" \
        --with-libz \
        --with-libz-prefix="$zlib_INSTALL_DIR"
}
