summary "HTTP-server to execute shell commands."
src_git "https://github.com/msoap/shell2http.git"
license "MIT"
bsystem "go"

build_in_sourced

build() {
    run go build -v -trimpath -o shell2http &&
    run install_bins shell2http &&
    run install_mans shell2http.1
}
