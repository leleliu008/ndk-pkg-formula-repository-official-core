package set summary "Top-like interface for container metrics"
package set webpage "https://ctop.sh"
package set src.git "https://github.com/bcicen/ctop.git"
package set src.url "https://github.com/bcicen/ctop/archive/refs/tags/v0.7.5.tar.gz"
package set src.sum "a9a3be0e5eab2fee6b44a5d063188a354f9c0dde3d96a169d1490981f7826e9a"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -trimpath -v -tags release -ldflags "'-w -X main.version=${PACKAGE_VERSION}'" -o ctop &&
    run install_bins ctop
}
