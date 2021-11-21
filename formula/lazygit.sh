package set summary "Simple terminal UI for git commands"
package set src.git "https://github.com/jesseduffield/lazygit.git"
package set src.url "https://github.com/jesseduffield/lazygit/archive/v0.31.3.tar.gz"
package set src.sum "7a9fcb0c5f1edf025d1e1f5fb21099770e0de7ed424af62e133bd9d4afffdc35"
package set license "MIT"
package set bsystem 'go'

build() {
    run go build -v -trimpath -o lazygit -mod=vendor -ldflags "'-X main.version=$PACKAGE_VERSION -X main.buildSource=ndk-pkg'" &&
    run install_bins lazygit
}
