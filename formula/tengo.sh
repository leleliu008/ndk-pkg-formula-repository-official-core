pkg_set summary "Fast script language for Go"
pkg_set webpage "https://tengolang.com"
pkg_set git.url "https://github.com/d5/tengo.git"
pkg_set src.url "https://github.com/d5/tengo/archive/v2.10.1.tar.gz"
pkg_set src.sha "00c892a7cb4e847eefd36f5b8db695e184da5c090c6b509339c3b5d3a746232f"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow ./cmd/tengo
}
