package set summary "Simple terminal UI for git commands"
package set src.git "https://github.com/jesseduffield/lazygit.git"
package set src.url "https://github.com/jesseduffield/lazygit/archive/v0.31.4.tar.gz"
package set src.sum "584b04e5d5666f863bd742efcce5b8ec30095ff97fd7f6f887e94e94c6eac7d8"
package set license "MIT"
package set bsystem 'go'

build() {
    run go build -v -trimpath -o lazygit -mod=vendor -ldflags "'-X main.version=$PACKAGE_VERSION -X main.buildSource=ndk-pkg'" &&
    run install_bins lazygit
}
