package set summary "Web Assembly Binary Toolkit"
package set git.url "https://github.com/WebAssembly/wabt.git"
package set src.url "https://github.com/WebAssembly/wabt/archive/refs/tags/1.0.25.tar.gz"
package set src.sum "be9414daf02c7666937e1506a484294beb32b625bee80e00c7a6619854d95286"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew -DBUILD_TESTS=OFF
}
