summary "memory-safe and OpenSSL-compatible TLS library"
webpage "https://mesalink.io"
src_url "https://github.com/mesalock-linux/mesalink.git"
require "cargo rustup"

build_in_sourced

build() {
    run cargo clean &&
    run cargo build --target $CARGO_TARGET --release -vv &&
    install_incs mesalink/*.h &&
    install_incs mesalink/openssl/*.h:openssl &&
    install_libs target/$CARGO_TARGET/release/libmesalink.a &&
    install_libs target/$CARGO_TARGET/release/libmesalink.so
}
