package set summary "Modern shell for the GitHub era"
package set webpage "https://www.nushell.sh"
package set src.git "https://github.com/nushell/nushell.git"
package set src.url "https://github.com/nushell/nushell/archive/0.26.0.tar.gz"
package set src.sum "66fbfe1297997a3f6b2181cd723816150ad2453527c7cab6c83a9c67b9af2478"
package set license "MIT"
package set bsystem "cargo"
package set dep.cmd "pkg-config"
package set dep.pkg "zlib openssl"

package set binsrcd true

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
