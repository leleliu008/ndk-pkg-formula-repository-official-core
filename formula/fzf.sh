package set summary "Command-line fuzzy finder written in Go"
package set src.git "https://github.com/junegunn/fzf.git"
package set src.url "https://github.com/junegunn/fzf/archive/0.28.0.tar.gz"
package set src.sum "05bbfa4dd84b72e55afc3fe56c0fc185d6dd1fa1c4eef56a1559b68341f3d029"
package set license "MIT"
package set bsystem 'go'

build() {
    run go build -v -trimpath -o fzf -ldflags "'-s -w -X main.version=$PACKAGE_VERSION -X main.revision=ndk-pkg'" &&
    run install_bins fzf
}
