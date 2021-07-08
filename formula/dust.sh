package set summary "More intuitive version of du in rust"
package set src.git "https://github.com/bootandy/dust.git"
package set src.url "https://github.com/bootandy/dust/archive/v0.6.0.tar.gz"
package set src.sum "4d13a2edf38ab7bfc01b700f5856c92aa3772249a203b34247c3b2c7dd8fa574"
package set license "Apache-2.0"
package set bsystem "cargo"

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
