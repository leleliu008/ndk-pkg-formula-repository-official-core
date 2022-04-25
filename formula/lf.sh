pkg_set summary "Terminal file manager"
pkg_set git.url "https://godoc.org/github.com/gokcehan/lf.git"
pkg_set src.url "https://github.com/gokcehan/lf/archive/r26.tar.gz"
pkg_set src.sha "dccd1ad67d2639e47fe0cbc93d74f202d6d6f0c3759fb0237affb7b1a2b1379e"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.gVersion=$PACKAGE_VERSION &&
    run install_mans lf.1
}
