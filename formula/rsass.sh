pkg_set summary "Sass reimplemented in rust with nom."
pkg_set git.url "https://github.com/kaj/rsass.git"
pkg_set src.url "https://github.com/kaj/rsass/archive/refs/tags/v0.23.0.tar.gz"
pkg_set src.sha "30a1e7c0561a463dce95f93f3faaac4eedee079f10ece08a210fba708704e8c3"
pkg_set license "MIT"
pkg_set bsystem "cargo"

build() {
    cargow install --features=commandline
}
