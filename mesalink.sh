package set summary "memory-safe and OpenSSL-compatible TLS library"
package set webpage "https://mesalink.io"
package set src.git "https://github.com/mesalock-linux/mesalink.git"
package set bsystem "cargo"

package set binsrcd true

build() {
    run cargo clean &&
    run cargo build --target $CARGO_TARGET --release -vv &&
    run install_incs mesalink/*.h &&
    run install_incs mesalink/openssl/*.h:openssl &&
    run install_libs target/$CARGO_TARGET/release/libmesalink.a &&
    run install_libs target/$CARGO_TARGET/release/libmesalink.so
}
