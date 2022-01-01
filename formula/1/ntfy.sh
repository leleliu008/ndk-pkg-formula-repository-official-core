package set summary "HTTP-based pub-sub notification service"
package set webpage "https://ntfy.sh/"
package set git.url "https://github.com/binwiederhier/ntfy.git"
package set src.url "https://github.com/binwiederhier/ntfy/archive/refs/tags/v1.10.0.tar.gz"
package set src.sum "27e2b49fcd9909292e211577976c34b762f95cee11ec472f46c055303c852cd9"
package set license "Apache-2.0"
package set bsystem "go"

# server/server.go:116:13: pattern docs: no matching files found
# https://github.com/binwiederhier/ntfy/issues/72

build() {
    run go build -v -trimpath -ldflags="'-s -w -X main.version=$PACKAGE_VERSION'" -o ntfy &&
    run install_bins ntfy
}
