package set summary "Yet another cross-platform graphical process/system monitor"
package set webpage "https://clementtsang.github.io/bottom/"
package set git.url "https://github.com/ClementTsang/bottom.git"
package set src.url "https://github.com/ClementTsang/bottom/archive/0.6.8.tar.gz"
package set src.sum "4e4eb251972a7af8c46dd36bcf1335fea334fb670569434fbfd594208905b2d9"
package set license "MIT"
package set bsystem "cargo"

prepare() {
    sed_in_place '/default =/c default = ["fern", "log"]' Cargo.toml
}
