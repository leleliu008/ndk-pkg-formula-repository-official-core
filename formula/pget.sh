package set summary "The fastest file download client"
package set git.url "https://github.com/Code-Hex/pget.git"
package set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION ./cmd/pget
}
