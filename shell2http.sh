summary "HTTP-server to execute shell commands."
webpage "https://github.com/msoap/shell2http"
src_git "https://github.com/msoap/shell2http.git"
src_url "https://github.com/msoap/shell2http.git"
license "MIT"
require "go"

build_in_sourced

build() {
    run go build -v -trimpath -o shell2http &&
    install_bins shell2http &&
    install_mans shell2http.1
}
