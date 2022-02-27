package set summary "Web Assembly Binary Toolkit"
package set git.url "https://github.com/WebAssembly/wabt.git"
package set src.url "https://github.com/WebAssembly/wabt/releases/download/1.0.27/wabt-1.0.27.tar.xz"
package set src.sum "f083e27bdc7740b1ac0690fd767dd19675643510b8741d08513e2dbe8948728b"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew -DBUILD_TESTS=OFF
}
