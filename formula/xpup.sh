pkg_set summary "A command line XML parsing tool"
pkg_set git.url "https://github.com/ericchiang/xpup.git"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

prepare() {
    run go mod init &&
    run go mod tidy
}
