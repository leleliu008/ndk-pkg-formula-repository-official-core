package set summary "The fastest file download client"
package set git.url "https://github.com/Code-Hex/pget.git"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w -X main.version=$PACKAGE_VERSION'" -o pget ./cmd/pget &&
    run install_bins pget
}
