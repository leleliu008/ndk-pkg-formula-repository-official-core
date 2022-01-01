package set summary "Savoury implementation of the QUIC transport protocol and HTTP/3"
package set git.url "https://github.com/cloudflare/quiche.git"
package set bsystem "cargo"
package set binsrcd 'yes'

build() {
    cargow build --package quiche &&
    install_incs quiche/include/quiche.h &&
    install_libs target/$RUST_TARGET/release/libquiche.a &&
    install_libs target/$RUST_TARGET/release/libquiche.so
}
