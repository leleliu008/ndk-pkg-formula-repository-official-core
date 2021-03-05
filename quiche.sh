summary "Savoury implementation of the QUIC transport protocol and HTTP/3"
webpage "https://github.com/cloudflare/quiche"
src_url "https://github.com/cloudflare/quiche.git"
bsystem "cargo"

build_in_sourced

build() {
    run cargo clean &&
    run cargo build --target $CARGO_TARGET --release -vv &&
    install_incs include/quiche.h &&
    install_libs target/$CARGO_TARGET/release/libquiche.a &&
    install_libs target/$CARGO_TARGET/release/libquiche.so
}
