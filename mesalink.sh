summary  "memory-safe and OpenSSL-compatible TLS library"
homepage "https://mesalink.io"
url      "https://github.com/mesalock-linux/mesalink.git"
requirements "cargo"

build() {
    cargo &&
    install -d "$ABI_INCLUDE_DIR/openssl" &&
    install -d "$ABI_LIBRARY_DIR" &&
    install -m 644 $SOURCE_DIR/mesalink/*.h         "$ABI_INCLUDE_DIR" &&
    install -m 644 $SOURCE_DIR/mesalink/openssl/*.h "$ABI_INCLUDE_DIR/openssl" &&
    install -m 644 $SOURCE_DIR/target/$BUILD_FOR_TARGET_TRIPLE/release/libmesalink.a  "$ABI_LIBRARY_DIR" &&
    install -m 755 $SOURCE_DIR/target/$BUILD_FOR_TARGET_TRIPLE/release/libmesalink.so "$ABI_LIBRARY_DIR"
}
