package set summary "Simple terminal UI for git commands"
package set src.git "https://github.com/jesseduffield/lazygit.git"
package set src.url "https://github.com/jesseduffield/lazygit/archive/v0.28.2.tar.gz"
package set src.sum "4925089bff0fee55ccc495fdcc2d396e48e04d16ad8d6681b6cce7b10eefa2b4"
package set license "MIT"
package set bsystem 'go'

build() {
    run go build -v -trimpath -o lazygit -mod=vendor -ldflags "'-X main.version=$PACKAGE_VERSION -X main.buildSource=ndk-pkg'" &&
    run install_bins lazygit
}
