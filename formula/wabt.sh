package set summary "Web Assembly Binary Toolkit"
package set src.git "https://github.com/WebAssembly/wabt.git"
package set src.url "https://github.com/WebAssembly/wabt/releases/download/1.0.23/wabt-1.0.23.tar.xz"
package set src.sum "fc421029e1964dd6ac846cf4270ae8130a3a4d9d553bf41c175a56da8e4223ee"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew -DBUILD_TESTS=OFF
}
