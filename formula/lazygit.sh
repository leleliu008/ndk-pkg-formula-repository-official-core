pkg_set summary "Simple terminal UI for git commands"
pkg_set git.url "https://github.com/jesseduffield/lazygit.git"
pkg_set src.url "https://github.com/jesseduffield/lazygit/archive/v0.34.tar.gz"
pkg_set src.sha "f715ab86b219fd42462399459bfa1e04a5925268bff4839c4d96bd01264d6847"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -mod vendor -X main.version=$PACKAGE_VERSION -X main.buildSource=ndk-pkg
}
