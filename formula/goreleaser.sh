pkg_set summary "Deliver Go binaries as fast and easily as possible"
pkg_set webpage "https://goreleaser.com/"
pkg_set git.url "https://github.com/goreleaser/goreleaser.git"
pkg_set src.url "https://github.com/goreleaser/goreleaser/archive/refs/tags/v1.7.0.tar.gz"
pkg_set src.sha "12d313e2eb91aef656f7e8929b450665fec8473959e9b40efaceaaf5182dd0b6"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.commit=$PACKAGE_GIT_REV -X main.builtBy=ndk-pkg
}
