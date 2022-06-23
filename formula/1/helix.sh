pkg_set summary "A post-modern modal text editor."
pkg_set webpage "https://helix-editor.com/"
pkg_set git.url "https://github.com/helix-editor/helix.git"
pkg_set src.url "https://github.com/helix-editor/helix/archive/refs/tags/v0.6.0.tar.gz"
pkg_set src.sha "522aec90a268015b88cd7ddbc9de43c93314241b863cf7b7da12205cec565464"
pkg_set license "MPL-2.0"
pkg_set bsystem "cargo"

build() {
    cargow install --path "$PACKAGE_INSTALLING_BST_DIR/helix-term"
}
