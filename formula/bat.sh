package set summary "Clone of cat(1) with syntax highlighting and Git integration"
package set git.url "https://github.com/sharkdp/bat.git"
package set src.url "https://github.com/sharkdp/bat/archive/v0.19.0.tar.gz"
package set src.sum "6a920cad1e7ae069eb9393f5b6883e0a7f2c957186b1075976331daaa5e0468a"
package set license "Apache-2.0"
package set bsystem "cargo"

build() {
    cargow install &&
    install_mans $(find "$SOURCE_DIR/target/$RUST_TARGET/release/build" -name 'bat.1')
}
