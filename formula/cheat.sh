pkg_set summary "Create and view interactive cheat sheets for *nix commands"
pkg_set git.url "https://github.com/cheat/cheat.git"
pkg_set src.url "https://github.com/cheat/cheat/archive/4.2.3.tar.gz"
pkg_set src.sha "9624160ba542fb51bbd959d8c68b76f82ea324a6186d8d6d544b0efd8c9cc8ca"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -mod vendor ./cmd/cheat
}
