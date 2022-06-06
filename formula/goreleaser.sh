pkg_set summary "Deliver Go binaries as fast and easily as possible"
pkg_set webpage "https://goreleaser.com/"
pkg_set git.url "https://github.com/goreleaser/goreleaser.git"
pkg_set src.url "https://github.com/goreleaser/goreleaser/archive/refs/tags/v1.9.2.tar.gz"
pkg_set src.sha "f50f8d7c4809eacb0824a215a7b70329b10f241b0a8bbf9cec0fcba3329914a6"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.version=$PACKAGE_VERSION -X main.commit=$PACKAGE_GIT_REV -X main.builtBy=ndk-pkg
}
