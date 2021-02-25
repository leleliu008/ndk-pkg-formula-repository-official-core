summary "Modern shell for the GitHub era"
webpage "https://www.nushell.sh"
src_git "https://github.com/nushell/nushell.git"
src_url "https://github.com/nushell/nushell/archive/0.26.0.tar.gz"
src_sum "66fbfe1297997a3f6b2181cd723816150ad2453527c7cab6c83a9c67b9af2478"
license "MIT"
require "rustup cargo pkg-config"
depends "zlib openssl"

build_in_sourced

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
