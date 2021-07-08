package set summary "Human-friendly and fast alternative to cut and (sometimes) awk"
package set src.git "https://github.com/theryangeary/choose.git"
package set src.url "https://github.com/theryangeary/choose/archive/v1.3.1.tar.gz"
package set src.sum "6c44170f456f410370ba31d59bfad1f54a71ba80a79b87debbe235672a2ea0dd"
package set license "GPL-3.0-or-later"
package set bsystem "cargo"

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
