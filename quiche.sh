summary "Savoury implementation of the QUIC transport protocol and HTTP/3"
webpage "https://github.com/cloudflare/quiche"
src_url "https://github.com/cloudflare/quiche.git"
require "cargo"

build() {
    cargo include/quiche.h libquiche.a libquiche.so
}
