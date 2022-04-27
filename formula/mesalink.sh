pkg_set summary "memory-safe and OpenSSL-compatible TLS library"
pkg_set webpage "https://mesalink.io"
pkg_set git.url "https://github.com/mesalock-linux/mesalink.git"
pkg_set license "|LICENSE|https://raw.githubusercontent.com/mesalock-linux/mesalink/master/LICENSE"
pkg_set bsystem "cargo"
pkg_set binbstd 'yes'

build() {
    cargow build &&
    run install_incs mesalink/*.h &&
    run install_incs mesalink/openssl/*.h:openssl &&
    run install_libs target/$RUST_TARGET/release/libmesalink.a &&
    run install_libs target/$RUST_TARGET/release/libmesalink.so
}
