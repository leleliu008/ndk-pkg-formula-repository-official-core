package set summary "Command-line fuzzy finder written in Go"
package set src.git "https://github.com/junegunn/fzf.git"
package set src.url "https://github.com/junegunn/fzf/archive/0.27.3.tar.gz"
package set src.sum "a0ad8dc6dd5c7a0c87ad623c0d9164cc2861489b76cb7a8b66f51cb4f9a81254"
package set license "MIT"
package set bsystem 'go'

build() {
    run go build -v -trimpath -o fzf -ldflags "'-s -w -X main.version=$PACKAGE_VERSION -X main.revision=ndk-pkg'" &&
    run install_bins fzf
}
