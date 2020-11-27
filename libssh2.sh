summary  "C library implementing the SSH2 protocol"
homepage "https://libssh2.org"
url      "https://libssh2.org/download/libssh2-1.9.0.tar.gz"
sha256   "d5fb8bd563305fd1074dda90bd053fb2d29fc4bce048d182f96eaa466dfadafd"
dependencies "libgcrypt"

build() {
    export LDFLAGS="$LDFLAGS -lz -lgpg-error -lgcrypt"
    configure \
        --disable-examples-build \
        --disable-werror \
        --with-crypto=libgcrypt \
        --with-libgcrypt-prefix="$libgcrypt_INSTALL_DIR" \
        --with-libz
}
