package set summary "Go git service"
package set webpage "https://gogs.io"
package set src.git "https://github.com/gogs/gogs.git"
package set src.url "https://github.com/gogs/gogs/archive/v0.12.3.tar.gz"
package set src.sum "6a0e1e369d2e097a73fe99fb78046db0b022ce0c229d3977068e7b21e2e364c8"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o gogs &&
    run install_bins gogs
}
