package set summary "Clone of cat(1) with syntax highlighting and Git integration"
package set git.url "https://github.com/sharkdp/bat.git"
package set src.url "https://github.com/sharkdp/bat/archive/v0.20.0.tar.gz"
package set src.sum "12eca3add56f21b8056a4c17cfb5bffc45e107f23f75a8e0f5de948d8e997c39"
package set license "Apache-2.0"
package set bsystem "cargo"

build() {
    cargow install &&
    install_mans $(find "$SOURCE_DIR/target/$RUST_TARGET/release/build" -name 'bat.1')
}
