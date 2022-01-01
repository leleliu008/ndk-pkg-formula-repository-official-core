package set summary "Clone of cat(1) with syntax highlighting and Git integration"
package set git.url "https://github.com/sharkdp/bat.git"
package set src.url "https://github.com/sharkdp/bat/archive/v0.18.3.tar.gz"
package set src.sum "dff7fa5222f40c7b3c783d3ceb0c3ffb35662f1198b00d785f80f3f1523399dd"
package set license "Apache-2.0"
package set bsystem "cargo"

build() {
    cargow install &&
    install_mans $(find "$SOURCE_DIR/target/$RUST_TARGET/release/build" -name 'bat.1')
}
