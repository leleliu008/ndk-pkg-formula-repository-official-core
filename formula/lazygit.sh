package set summary "Simple terminal UI for git commands"
package set git.url "https://github.com/jesseduffield/lazygit.git"
package set src.url "https://github.com/jesseduffield/lazygit/archive/v0.32.1.tar.gz"
package set src.sum "58c8d21601ecdcdab47a127eb17cd4f2b71c40ec6d89eb98b3ccdeceef07aafd"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o lazygit -mod=vendor -ldflags "'-s -w -X main.version=$PACKAGE_VERSION -X main.buildSource=ndk-pkg'" &&
    run install_bins lazygit
}
