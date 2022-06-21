pkg_set summary "Clone of cat(1) with syntax highlighting and Git integration"
pkg_set git.url "https://github.com/sharkdp/bat.git"
pkg_set src.url "https://github.com/sharkdp/bat/archive/v0.21.0.tar.gz"
pkg_set src.sha "3dff1e52d577d0a105f4afe3fe7722a4a2b8bb2eb3e7a6a5284ac7add586a3ee"
pkg_set license "Apache-2.0"
pkg_set dep.pkg "libgetloadavg"
pkg_set bsystem "cargo"
pkg_set install "exe"

build() {
    cargow install
    install_mans                target/$RUST_TARGET/release/build/bat-*/out/assets/manual/bat.1
    install_completion bash bat target/$RUST_TARGET/release/build/bat-*/out/assets/completions/bat.bash
    install_completion fish bat target/$RUST_TARGET/release/build/bat-*/out/assets/completions/bat.fish
    install_completion  zsh bat target/$RUST_TARGET/release/build/bat-*/out/assets/completions/bat.zsh
}
