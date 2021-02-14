summary "Go git service"
webpage "https://gogs.io"
src_git "https://github.com/gogs/gogs.git"
src_url "https://github.com/gogs/gogs/archive/v0.12.3.tar.gz"
src_sum "6a0e1e369d2e097a73fe99fb78046db0b022ce0c229d3977068e7b21e2e364c8"
license "MIT"
require "go"

build_in_sourced

build() {
    go build -v -trimpath -o gogs &&
    install_bins gogs
}
