pkg_set summary "HTTP-server to execute shell commands."
pkg_set git.url "https://github.com/msoap/shell2http.git"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow &&
    run install_mans shell2http.1
}
