package set summary "Savoury implementation of the QUIC transport protocol and HTTP/3"
package set src.git "https://github.com/cloudflare/quiche.git"
package set bsystem "cargo"
package set binsrcd 'YES'

build() {
    cargow build &&
    install_incs include/quiche.h &&
    install_libs target/$CARGO_TARGET/release/libquiche.a &&
    install_libs target/$CARGO_TARGET/release/libquiche.so
}
