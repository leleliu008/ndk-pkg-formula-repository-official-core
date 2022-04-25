pkg_set summary "The fastest file download client"
pkg_set git.url "https://github.com/Code-Hex/pget.git"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION ./cmd/pget
}
