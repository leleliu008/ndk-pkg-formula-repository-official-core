package set summary "Deliver Go binaries as fast and easily as possible"
package set webpage "https://goreleaser.com/"
package set git.url "https://github.com/goreleaser/goreleaser.git"
package set src.url "https://github.com/goreleaser/goreleaser/archive/refs/tags/v1.7.0.tar.gz"
package set src.sum "12d313e2eb91aef656f7e8929b450665fec8473959e9b40efaceaaf5182dd0b6"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.commit=$PACKAGE_GIT_REV -X main.builtBy=ndk-pkg
}
