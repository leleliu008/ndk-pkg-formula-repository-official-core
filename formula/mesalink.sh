package set summary "memory-safe and OpenSSL-compatible TLS library"
package set webpage "https://mesalink.io"
package set git.url "https://github.com/mesalock-linux/mesalink.git"
package set bsystem "cargo"
package set binbstd 'yes'

build() {
    cargow build &&
    run install_incs mesalink/*.h &&
    run install_incs mesalink/openssl/*.h:openssl &&
    run install_libs target/$RUST_TARGET/release/libmesalink.a &&
    run install_libs target/$RUST_TARGET/release/libmesalink.so
}
