package set summary "Intuitive find & replace CLI"
package set src.git "https://github.com/chmln/sd.git"
package set src.url "https://github.com/chmln/sd/archive/v0.7.6.tar.gz"
package set src.sum "faf33a97797b95097c08ebb7c2451ac9835907254d89863b10ab5e0813b5fe5f"
package set license "MIT"
package set bsystem "cargo"

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
