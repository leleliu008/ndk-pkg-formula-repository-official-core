pkg_set summary "Web Assembly Binary Toolkit"
pkg_set git.url "https://github.com/WebAssembly/wabt.git"
pkg_set src.url "https://github.com/WebAssembly/wabt/releases/download/1.0.27/wabt-1.0.27.tar.xz"
pkg_set src.sha "f083e27bdc7740b1ac0690fd767dd19675643510b8741d08513e2dbe8948728b"
pkg_set license "Apache-2.0"
pkg_set bsystem "cmake"

build() {
    cmakew -DBUILD_TESTS=OFF
}
