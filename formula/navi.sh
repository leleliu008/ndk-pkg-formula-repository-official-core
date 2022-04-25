pkg_set summary "Interactive cheatsheet tool for the command-line"
pkg_set git.url "https://github.com/denisidoro/navi.git"
pkg_set src.url "https://github.com/denisidoro/navi/archive/v2.19.0.tar.gz"
pkg_set src.sha "dfcefd8deb4c472517640e5ff285ec9f8cfc54546e6616917bfd8d6bc0f2e086"
pkg_set license "Apache-2.0"
pkg_set bsystem "cargo"

build() {
    cargow install --locked
}
