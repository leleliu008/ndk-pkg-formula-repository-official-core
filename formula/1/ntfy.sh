pkg_set summary "HTTP-based pub-sub notification service"
pkg_set webpage "https://ntfy.sh/"
pkg_set git.url "https://github.com/binwiederhier/ntfy.git"
pkg_set src.url "https://github.com/binwiederhier/ntfy/archive/refs/tags/v1.16.0.tar.gz"
pkg_set src.sha "1f18248eb98f895696b85cc4c0c73b34ab76aa4954e2bc9efc7891ab3431c059"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

# server/server.go:116:13: pattern docs: no matching files found
# https://github.com/binwiederhier/ntfy/issues/72

prepare2() {
    make docs
}

build() {
    gow -X main.version=$PACKAGE_VERSION
}
