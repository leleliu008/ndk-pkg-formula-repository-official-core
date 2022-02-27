package set summary "Simple terminal UI for git commands"
package set git.url "https://github.com/jesseduffield/lazygit.git"
package set src.url "https://github.com/jesseduffield/lazygit/archive/v0.33.tar.gz"
package set src.sum "ff7ab429ecd54f6e2aedcfd4835eb8ca17c1990aac2534f8c2a19ce4267ade24"
package set license "MIT"
package set bsystem "go"

build() {
    gow -mod vendor -X main.version=$PACKAGE_VERSION -X main.buildSource=ndk-pkg
}
