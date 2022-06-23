pkg_set summary "Fast script language for Go"
pkg_set webpage "https://tengolang.com"
pkg_set git.url "https://github.com/d5/tengo.git"
pkg_set src.url "https://github.com/d5/tengo/archive/v2.12.0.tar.gz"
pkg_set src.sha "d74f551194d141f36c7314f2286eea7f2bc92acdd47bd11c7df5186f15f25fc1"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow ./cmd/tengo
}
