pkg_set summary "Command-line fuzzy finder written in Go"
pkg_set git.url "https://github.com/junegunn/fzf.git"
pkg_set src.url "https://github.com/junegunn/fzf/archive/0.30.0.tar.gz"
pkg_set src.sha "a3428f510b7136e39104a002f19b2e563090496cb5205fa2e4c5967d34a20124"
pkg_set license "MIT"
pkg_set bsystem 'go'

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.revision=ndk-pkg
}
