package set summary "Web Assembly Binary Toolkit"
package set git.url "https://github.com/WebAssembly/wabt.git"
package set src.url "https://github.com/WebAssembly/wabt/releases/download/1.0.24/wabt-1.0.24.tar.xz"
package set src.sum "91df726401e238fbecceb3f9fcc6257e6f4c9c39ddb3b1cadb9ff08a21e51cd7"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew -DBUILD_TESTS=OFF
}
