pkg_set summary "Yet another cross-platform graphical process/system monitor"
pkg_set webpage "https://clementtsang.github.io/bottom/"
pkg_set git.url "https://github.com/ClementTsang/bottom.git"
pkg_set src.url "https://github.com/ClementTsang/bottom/archive/0.6.8.tar.gz"
pkg_set src.sha "4e4eb251972a7af8c46dd36bcf1335fea334fb670569434fbfd594208905b2d9"
pkg_set license "MIT"
pkg_set bsystem "cargo"

prepare() {
    sed_in_place '/default =/c default = ["fern", "log"]' Cargo.toml
}
