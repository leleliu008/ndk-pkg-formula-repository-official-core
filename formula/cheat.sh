package set summary "Create and view interactive cheat sheets for *nix commands"
package set src.git "https://github.com/cheat/cheat.git"
package set src.url "https://github.com/cheat/cheat/archive/4.2.2.tar.gz"
package set src.sum "b4fb5a0d63bad020ca240a8e27b573ef127a1ca0f27e87a2cb8bd817c258611a"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -mod vendor -o cheat ./cmd/cheat &&
    run install_bins cheat
}
