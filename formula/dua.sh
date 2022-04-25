pkg_set summary "View disk space usage and delete unwanted data, fast."
pkg_set git.url "https://github.com/Byron/dua-cli.git"
pkg_set src.url "https://github.com/Byron/dua-cli/archive/refs/tags/v2.14.11.tar.gz"
pkg_set src.sha "31c95fc4e9e034f9ba892397dc3d3844635c6b03852983fcf3b0cc326b751c83"
pkg_set license "MIT"
pkg_set bsystem "cargo"

build() {
    cargow install --no-default-features
}
