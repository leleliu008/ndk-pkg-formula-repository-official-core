pkg_set summary "The Universal WebAssembly Runtime"
pkg_set webpage "https://wasmer.io"
pkg_set git.url "https://github.com/wasmerio/wasmer.git"
pkg_set src.url "https://github.com/wasmerio/wasmer/archive/2.1.1.tar.gz"
pkg_set src.sha "f2ca1f3c48983de854b01c87b521e02245654f235d48d339a0e25229e184a322"
pkg_set license "MIT"
pkg_set bsystem "cargo"
pkg_set binbstd 'yes'
pkg_set bscript "lib/cli"

build() {
    cargow install --features cranelift
}
