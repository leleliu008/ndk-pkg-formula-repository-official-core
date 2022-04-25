pkg_set summary "Experimental Rust compiler front-end for IDEs"
pkg_set webpage "https://rust-analyzer.github.io/"
pkg_set git.url "https://github.com/rust-analyzer/rust-analyzer.git"
pkg_set version "2022-03-28"
pkg_set src.url "https://github.com/rust-analyzer/rust-analyzer/archive/refs/tags/$PACKAGE_VERSION.tar.gz"
pkg_set src.sha "b921788d0b3f838e5cf7b6e6ecc34390c19466486ab0157b5e343cd256aa2470"
pkg_set license "Apache-2.0"
pkg_set bsystem "cargo"
pkg_set bscript "crates/rust-analyzer"

build() {
    cargow install --locked
}
