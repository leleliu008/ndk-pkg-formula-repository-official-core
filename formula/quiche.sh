pkg_set summary "Savoury implementation of the QUIC transport protocol and HTTP/3"
pkg_set git.url "https://github.com/cloudflare/quiche.git"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "cargo"
pkg_set binbstd "yes"

build() {
    cargow build --package quiche &&
    install_incs quiche/include/quiche.h &&
    install_libs target/$RUST_TARGET/release/libquiche.a &&
    install_libs target/$RUST_TARGET/release/libquiche.so
}
