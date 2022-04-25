pkg_set summary "High performance WebAssembly interpreter"
pkg_set git.url "https://github.com/wasm3/wasm3.git"
pkg_set src.url "https://github.com/wasm3/wasm3/archive/v0.5.0.tar.gz"
pkg_set src.sha "b778dd72ee2251f4fe9e2666ee3fe1c26f06f517c3ffce572416db067546536c"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew -DBUILD_NATIVE=OFF &&
    install_bins wasm3
}
