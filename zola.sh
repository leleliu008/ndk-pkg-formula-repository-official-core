summary "Fast static site generator in a single binary with everything built-in"
webpage "https://www.getzola.org"
src_url "https://github.com/getzola/zola/archive/v0.13.0.tar.gz"
src_sum "84c20cf5c851a465266c5cc343623752102c53929f6da31b2a4ce747a87c5c23"
license "MIT"
bsystem "cargo"

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --locked --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
