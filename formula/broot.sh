pkg_set summary "New way to see and navigate directory trees"
pkg_set webpage "https://dystroy.org/broot/"
pkg_set git.url "https://github.com/Canop/broot.git"
pkg_set src.url "https://github.com/Canop/broot/archive/v1.13.1.tar.gz"
pkg_set src.sha "95b4b01c43f23b8d4f06030b57c9b2e47a4fbbc4f6099acaf6e42d1f1697385e"
pkg_set license "MIT"
pkg_set dep.pkg "zlib"
pkg_set bsystem "cargo"

build() {
    cargow install --locked
}
