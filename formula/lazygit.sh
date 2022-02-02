package set summary "Simple terminal UI for git commands"
package set git.url "https://github.com/jesseduffield/lazygit.git"
package set src.url "https://github.com/jesseduffield/lazygit/archive/v0.32.2.tar.gz"
package set src.sum "44a735c4ee78838dc918e82bd5070b154600cd24992259fd698f2116a797012b"
package set license "MIT"
package set bsystem "go"

build() {
    gow -mod vendor -X main.version=$PACKAGE_VERSION -X main.buildSource=ndk-pkg
}
