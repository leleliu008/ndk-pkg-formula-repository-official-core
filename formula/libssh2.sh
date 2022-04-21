package set summary "C library implementing the SSH2 protocol"
package set webpage "https://www.libssh2.org"
package set git.url "https://github.com/libssh2/libssh2.git"
package set src.url "https://www.libssh2.org/download/libssh2-1.10.0.tar.gz"
package set src.sum "2d64e90f3ded394b91d3a2e774ca203a4179f69aebee03003e5a6fa621e41d51"
package set license "BSD-3-Clause;COPYING;https://github.com/libssh2/libssh2/blob/master/COPYING"
package set dep.pkg "zlib openssl"
package set bsystem "configure"

build() {
    configure \
        --disable-examples-build \
        --disable-werror \
        --with-crypto=openssl \
        --with-libssl-prefix="$openssl_INSTALL_DIR" \
        --with-libz \
        --with-libz-prefix="$zlib_INSTALL_DIR"
}
