pkg_set summary "Web Assembly Binary Toolkit"
pkg_set git.url "https://github.com/WebAssembly/wabt.git"
pkg_set src.url "https://github.com/WebAssembly/wabt/releases/download/1.0.29/wabt-1.0.29.tar.xz"
pkg_set src.sha "fafd6fa7d8ebe91767e011b6c3fee35548897edccfbabbf1d6ef8964b6a6e15f"
pkg_set license "Apache-2.0"
pkg_set bsystem "cmake"

build() {
    cmakew -DBUILD_TESTS=OFF
}
