summary  "Clone of cat(1) with syntax highlighting and Git integration"
homepage "https://github.com/sharkdp/bat"
url      "https://github.com/sharkdp/bat/archive/v0.17.1.tar.gz"
sha256   "16d39414e8a3b80d890cfdbca6c0e6ff280058397f4a3066c37e0998985d87c4"
license  "Apache-2.0"
requirements "cargo"

build() {
    cargo &&
    install -d "$ABI_BINARY_DIR" &&
    install -d "$ABI_INSTALL_DIR/share/man/man1" &&
    install -m 755 "$SOURCE_DIR/target/$BUILD_FOR_TARGET_TRIPLE/release/bat" "$ABI_BINARY_DIR" &&
    find "$SOURCE_DIR/target/$BUILD_FOR_TARGET_TRIPLE/release/build" -name 'bat.1' -exec install -m 644 {} \;
}
