package set summary "A post-modern modal text editor."
package set webpage "https://helix-editor.com/"
package set git.url "https://github.com/helix-editor/helix.git"
package set src.url "https://github.com/helix-editor/helix/archive/refs/tags/v0.6.0.tar.gz"
package set src.sum "522aec90a268015b88cd7ddbc9de43c93314241b863cf7b7da12205cec565464"
package set license "MPL-2.0"
package set bsystem "cargo"

build() {
    cargow install --path "$PACKAGE_BSCRIPT_DIR/helix-term"
}
