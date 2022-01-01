package set summary "Command-line fuzzy finder written in Go"
package set git.url "https://github.com/junegunn/fzf.git"
package set src.url "https://github.com/junegunn/fzf/archive/0.29.0.tar.gz"
package set src.sum "a287a8806ce56d764100c5a6551721e16649fd98325f6bf112e96fb09fe3031b"
package set license "MIT"
package set bsystem 'go'

build() {
    run go build -v -trimpath -o fzf -ldflags "'-s -w -X main.version=$PACKAGE_VERSION -X main.revision=ndk-pkg'" &&
    run install_bins fzf
}
