package set summary "Simple terminal UI for git commands"
package set git.url "https://github.com/jesseduffield/lazygit.git"
package set src.url "https://github.com/jesseduffield/lazygit/archive/v0.34.tar.gz"
package set src.sum "f715ab86b219fd42462399459bfa1e04a5925268bff4839c4d96bd01264d6847"
package set license "MIT"
package set bsystem "go"

build() {
    gow -mod vendor -X main.version=$PACKAGE_VERSION -X main.buildSource=ndk-pkg
}
