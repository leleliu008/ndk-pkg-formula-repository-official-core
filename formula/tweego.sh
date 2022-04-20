package set summary "A free command line compiler for Twine/Twee story formats"
package set git.url "https://github.com/tmedwards/tweego.git"
package set src.url "https://github.com/tmedwards/tweego/archive/refs/tags/v2.1.1.tar.gz"
package set src.sum "f58991ff0b5b344ebebb5677b7c21209823fa6d179397af4a831e5ef05f28b02"
package set license "BSD-2-Clause"
package set bsystem "go"

prepare() {
    run rm go.mod
    run go mod init github.com/tmedwards/tweego
    run go mod tidy
}
