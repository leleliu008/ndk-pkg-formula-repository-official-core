package set summary "HTTP-server to execute shell commands."
package set git.url "https://github.com/msoap/shell2http.git"
package set license "MIT"
package set bsystem "go"

build() {
    gow &&
    run install_mans shell2http.1
}
