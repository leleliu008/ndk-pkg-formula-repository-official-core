package set summary "The Universal WebAssembly Runtime"
package set webpage "https://wasmer.io"
package set src.git "https://github.com/wasmerio/wasmer.git"
package set src.url "https://github.com/wasmerio/wasmer/archive/2.0.0.tar.gz"
package set src.sum "f0d86dcd98882a7459f10e58671acf233b7d00f50dffe32f5770ab3bf850a9a6"
package set license "MIT"
package set bsystem "cargo"
package set binsrcd 'yes'

build() {
    cargow install --features cranelift
}
