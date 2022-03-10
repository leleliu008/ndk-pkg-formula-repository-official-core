package set summary "Deliver Go binaries as fast and easily as possible"
package set webpage "https://goreleaser.com/"
package set git.url "https://github.com/goreleaser/goreleaser.git"
package set src.url "https://github.com/goreleaser/goreleaser/archive/refs/tags/v1.6.1.tar.gz"
package set src.sum "9b0385387aafce8123f27cf6e184f9369e5305e9b71918f5f78f5a01d1bc65b9"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.commit=$PACKAGE_GIT_REV -X main.builtBy=ndk-pkg
}
