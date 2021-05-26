package set summary "HTTP-server to execute shell commands."
package set src.git "https://github.com/msoap/shell2http.git"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o shell2http &&
    run install_bins shell2http &&
    run install_mans shell2http.1
}
