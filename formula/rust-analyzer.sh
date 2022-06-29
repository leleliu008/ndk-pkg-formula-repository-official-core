pkg_set summary "Experimental Rust compiler front-end for IDEs"
pkg_set webpage "https://rust-analyzer.github.io/"
pkg_set git.url "https://github.com/rust-analyzer/rust-analyzer.git"
pkg_set version "2022-06-27"
pkg_set src.url "https://github.com/rust-analyzer/rust-analyzer/archive/refs/tags/$PACKAGE_VERSION.tar.gz"
pkg_set src.sha "e7c124f34f7cea2125957362f666512943c72112de2c69b2577fcddf1e749dd1"
pkg_set license "Apache-2.0"
pkg_set bsystem "cargo"
pkg_set bscript "crates/rust-analyzer"

build() {
    cargow install --locked
}
