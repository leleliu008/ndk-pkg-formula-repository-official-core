package set summary "Fast static site generator in a single binary with everything built-in"
package set webpage "https://www.getzola.org"
package set src.git "https://github.com/getzola/zola.git"
package set src.url "https://github.com/getzola/zola/archive/v0.13.0.tar.gz"
package set src.sum "84c20cf5c851a465266c5cc343623752102c53929f6da31b2a4ce747a87c5c23"
package set license "MIT"
package set bsystem "cargo"

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
