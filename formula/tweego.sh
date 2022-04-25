pkg_set summary "A free command line compiler for Twine/Twee story formats"
pkg_set git.url "https://github.com/tmedwards/tweego.git"
pkg_set src.url "https://github.com/tmedwards/tweego/archive/refs/tags/v2.1.1.tar.gz"
pkg_set src.sha "f58991ff0b5b344ebebb5677b7c21209823fa6d179397af4a831e5ef05f28b02"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "go"

prepare() {
    run rm go.mod
    run go mod init github.com/tmedwards/tweego
    run go mod tidy
}
