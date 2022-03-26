package set summary "Top-like interface for container metrics"
package set webpage "https://ctop.sh"
package set git.url "https://github.com/bcicen/ctop.git"
package set src.url "https://github.com/bcicen/ctop/archive/refs/tags/v0.7.7.tar.gz"
package set src.sum "0db439f2030af73ad5345884b08a33a762c3b41b30604223dd0ebddde72d2741"
package set license "MIT"
package set bsystem "go"

build() {
    gow -tags release -X main.version=$PACKAGE_VERSION
}
