summary "Clone of cat(1) with syntax highlighting and Git integration"
webpage "https://github.com/sharkdp/bat"
src_url "https://github.com/sharkdp/bat/archive/v0.17.1.tar.gz"
src_sum "16d39414e8a3b80d890cfdbca6c0e6ff280058397f4a3066c37e0998985d87c4"
license "Apache-2.0"
require "cargo"

build() {
    cargo bat 
    #$(find "$SOURCE_DIR/target/$BUILD_FOR_TARGET/release/build" -name 'bat.1') 
}
