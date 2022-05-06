pkg_set summary "Deliver Go binaries as fast and easily as possible"
pkg_set webpage "https://goreleaser.com/"
pkg_set git.url "https://github.com/goreleaser/goreleaser.git"
pkg_set src.url "https://github.com/goreleaser/goreleaser/archive/refs/tags/v1.8.3.tar.gz"
pkg_set src.sha "3ac091dacf81357a83b5c8bf17bbcb325371111b88bc59fa79c8354be2273145"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.commit=$PACKAGE_GIT_REV -X main.builtBy=ndk-pkg
}
