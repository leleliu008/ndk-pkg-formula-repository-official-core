package set summary "Top-like interface for container metrics"
package set webpage "https://ctop.sh"
package set git.url "https://github.com/bcicen/ctop.git"
package set src.url "https://github.com/bcicen/ctop/archive/refs/tags/v0.7.6.tar.gz"
package set src.sum "8ef76a7d4d725f750a5d8a6ee330e81b3b845a91fbd50ae3e746cead74736391"
package set license "MIT"
package set bsystem "go"

build() {
    gow -tags release -X main.version=$PACKAGE_VERSION
}
