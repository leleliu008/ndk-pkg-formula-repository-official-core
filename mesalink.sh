summary "memory-safe and OpenSSL-compatible TLS library"
webpage "https://mesalink.io"
src_git "https://github.com/mesalock-linux/mesalink.git"
bsystem "cargo"

build_in_sourced

build() {
    run cargo clean &&
    run cargo build --target $CARGO_TARGET --release -vv &&
    run install_incs mesalink/*.h &&
    run install_incs mesalink/openssl/*.h:openssl &&
    run install_libs target/$CARGO_TARGET/release/libmesalink.a &&
    run install_libs target/$CARGO_TARGET/release/libmesalink.so
}
