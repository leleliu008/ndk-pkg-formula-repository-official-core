package set summary "HTTP-based pub-sub notification service"
package set webpage "https://ntfy.sh/"
package set git.url "https://github.com/binwiederhier/ntfy.git"
package set src.url "https://github.com/binwiederhier/ntfy/archive/refs/tags/v1.13.0.tar.gz"
package set src.sum "c48482e8315db8b4ead212c6888e4ab7372c1eab5b448ff81831e8c9a4ad8b86"
package set license "Apache-2.0"
package set bsystem "go"

# server/server.go:116:13: pattern docs: no matching files found
# https://github.com/binwiederhier/ntfy/issues/72

prepare() {
    make docs
}

build() {
    gow -X main.version=$PACKAGE_VERSION
}
