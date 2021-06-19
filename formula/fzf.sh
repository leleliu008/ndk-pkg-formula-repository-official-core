package set summary "Command-line fuzzy finder written in Go"
package set src.git "https://github.com/junegunn/fzf.git"
package set src.url "https://github.com/junegunn/fzf/archive/0.27.2.tar.gz"
package set src.sum "7798a9e22fc363801131456dc21026ccb0f037aed026d17df60b1178b3f24111"
package set license "MIT"
package set bsystem 'go'

build() {
    run go build -v -trimpath -o fzf -ldflags "'-s -w -X main.version=$PACKAGE_VERSION -X main.revision=ndk-pkg'" &&
    run install_bins fzf
}
