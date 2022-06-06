pkg_set summary "Clone of cat(1) with syntax highlighting and Git integration"
pkg_set git.url "https://github.com/sharkdp/bat.git"
pkg_set src.url "https://github.com/sharkdp/bat/archive/v0.20.0.tar.gz"
pkg_set src.sha "12eca3add56f21b8056a4c17cfb5bffc45e107f23f75a8e0f5de948d8e997c39"
pkg_set license "Apache-2.0"
pkg_set bsystem "cargo"

build() {
    cargow install
    install_mans                target/$RUST_TARGET/release/build/bat-*/out/assets/manual/bat.1
    install_completion bash bat target/$RUST_TARGET/release/build/bat-*/out/assets/completions/bat.bash
    install_completion fish bat target/$RUST_TARGET/release/build/bat-*/out/assets/completions/bat.fish
    install_completion  zsh bat target/$RUST_TARGET/release/build/bat-*/out/assets/completions/bat.zsh
}
