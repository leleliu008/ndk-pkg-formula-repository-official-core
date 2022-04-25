pkg_set summary "Top-like interface for container metrics"
pkg_set webpage "https://ctop.sh"
pkg_set git.url "https://github.com/bcicen/ctop.git"
pkg_set src.url "https://github.com/bcicen/ctop/archive/refs/tags/v0.7.7.tar.gz"
pkg_set src.sha "0db439f2030af73ad5345884b08a33a762c3b41b30604223dd0ebddde72d2741"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -tags release -X main.version=$PACKAGE_VERSION
}
