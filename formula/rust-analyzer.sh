package set summary "Experimental Rust compiler front-end for IDEs"
package set webpage "https://rust-analyzer.github.io/"
package set git.url "https://github.com/rust-analyzer/rust-analyzer.git"
package set version "2022-03-28"
package set src.url "https://github.com/rust-analyzer/rust-analyzer/archive/refs/tags/$PACKAGE_VERSION.tar.gz"
package set src.sum "b921788d0b3f838e5cf7b6e6ecc34390c19466486ab0157b5e343cd256aa2470"
package set license "Apache-2.0"
package set bsystem "cargo"
package set bscript "crates/rust-analyzer"

build() {
    cargow install --locked
}
