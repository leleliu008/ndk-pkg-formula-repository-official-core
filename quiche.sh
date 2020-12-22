summary  "Savoury implementation of the QUIC transport protocol and HTTP/3"
homepage "https://github.com/cloudflare/quiche"
url      "https://github.com/cloudflare/quiche.git"
requirements "cargo"

build() {
    cargo include/quiche.h libquiche.a libquiche.so
}
