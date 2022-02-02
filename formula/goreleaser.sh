package set summary "Deliver Go binaries as fast and easily as possible"
package set webpage "https://goreleaser.com/"
package set git.url "https://github.com/goreleaser/goreleaser.git"
package set src.url "https://github.com/goreleaser/goreleaser/archive/refs/tags/v1.4.1.tar.gz"
package set src.sum "a9ac289bd72098ad5bd0c81efb29db48576fe380147053a6b72ac89eb0f85d65"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.commit=$PACKAGE_GIT_REV -X main.builtBy=ndk-pkg
}
