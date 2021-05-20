package set summary "Clone of cat(1) with syntax highlighting and Git integration"
package set src.git "https://github.com/sharkdp/bat.git"
package set src.url "https://github.com/sharkdp/bat/archive/v0.17.1.tar.gz"
package set src.sum "16d39414e8a3b80d890cfdbca6c0e6ff280058397f4a3066c37e0998985d87c4"
package set license "Apache-2.0"
package set bsystem "cargo"

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR" &&
    install_mans $(find "$SOURCE_DIR/target/$CARGO_TARGET/release/build" -name 'bat.1') 
}
