package set summary "Experimental Rust compiler front-end for IDEs"
package set webpage "https://rust-analyzer.github.io/"
package set git.url "https://github.com/rust-analyzer/rust-analyzer.git"
package set version "2022-03-21"
package set src.url "https://github.com/rust-analyzer/rust-analyzer/archive/refs/tags/$PACKAGE_VERSION.tar.gz"
package set src.sum "89f863879dc5a2ffbafb56da59a2ab09f9cba1a015468835379d08ec04aa3321"
package set license "Apache-2.0"
package set bscript "crates/rust-analyzer"
package set bsystem "cargo"

build() {
    cargow install --locked
}
