package set summary "Deliver Go binaries as fast and easily as possible"
package set webpage "https://goreleaser.com/"
package set git.url "https://github.com/goreleaser/goreleaser.git"
package set src.url "https://github.com/goreleaser/goreleaser/archive/refs/tags/v1.5.0.tar.gz"
package set src.sum "51851dd9d02f51b2a24933ce140e35d62d637c5fd782170ca552f073a3a08a61"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.commit=$PACKAGE_GIT_REV -X main.builtBy=ndk-pkg
}
