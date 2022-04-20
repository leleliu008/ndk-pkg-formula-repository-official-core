package set summary "Interactive cli tool for HTTP inspection"
package set git.url "https://github.com/asciimoo/wuzz.git"
package set src.url "https://github.com/asciimoo/wuzz/archive/refs/tags/v0.5.0.tar.gz"
package set src.sum "721ea7343698e9f3c69e09eab86b9b1fef828057655f7cebc1de728c2f75151e"
package set license "AGPL-3.0"
package set bsystem "go"

prepare() {
    run rm go.mod &&
    run go mod init github.com/asciimoo/wuzz &&
    run go mod tidy
}
