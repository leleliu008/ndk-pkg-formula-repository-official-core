package set summary "The Universal WebAssembly Runtime"
package set webpage "https://wasmer.io"
package set src.git "https://github.com/wasmerio/wasmer.git"
package set src.url "https://github.com/wasmerio/wasmer/archive/2.1.1.tar.gz"
package set src.sum "f2ca1f3c48983de854b01c87b521e02245654f235d48d339a0e25229e184a322"
package set license "MIT"
package set bsystem "cargo"
package set binsrcd 'yes'
package set sourced "lib/cli"

build() {
    cargow install --features cranelift
}
