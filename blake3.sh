summary  "Rust and C implementations of the BLAKE3 cryptographic hash function"
homepage "https://github.com/BLAKE3-team/BLAKE3"
url      "https://github.com/BLAKE3-team/BLAKE3/archive/0.3.7.tar.gz"
sha256   "304b3608770cc91a151c7c4af5541dd6dd29716bad449ae5a418643ef15bcc5b"
requirements "cargo"

build() {
    cargo &&
    install -d "$ABI_INCLUDE_DIR" &&
    install -d "$ABI_LIBRARY_DIR" &&
    install -m 644 "$SOURCE_DIR/c/blake3.h" "$ABI_INCLUDE_DIR" &&
    install -m 644 "$SOURCE_DIR/target/$BUILD_FOR_TARGET_TRIPLE/release/libblake3.a" "$ABI_LIBRARY_DIR"
}
