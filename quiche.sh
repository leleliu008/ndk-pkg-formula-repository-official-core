summary  "Savoury implementation of the QUIC transport protocol and HTTP/3"
homepage "https://github.com/cloudflare/quiche"
url      "https://github.com/cloudflare/quiche.git"
requirements "cargo"

build() {
    cargo &&
    install -d "$ABI_INCLUDE_DIR" &&
    install -d "$ABI_LIBRARY_DIR" &&
    install -m 644 "$SOURCE_DIR/include/quiche.h" "$ABI_INCLUDE_DIR" &&
    install -m 644 "$SOURCE_DIR/target/$BUILD_FOR_TARGET_TRIPLE/release/libquiche.a" "$ABI_LIBRARY_DIR"
}
