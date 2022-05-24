pkg_set summary "Interactive cheatsheet tool for the command-line"
pkg_set git.url "https://github.com/denisidoro/navi.git"
pkg_set src.url "https://github.com/denisidoro/navi/archive/v2.20.1.tar.gz"
pkg_set src.sha "92644677dc46e13aa71b049c5946dede06a22064b3b1834f52944d50e3fdb950"
pkg_set license "Apache-2.0"
pkg_set bsystem "cargo"

build() {
    cargow install --locked
}
