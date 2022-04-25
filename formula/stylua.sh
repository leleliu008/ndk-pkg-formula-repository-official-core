pkg_set summary "Opinionated Lua code formatter"
pkg_set git.url "https://github.com/JohnnyMorganz/StyLua.git"
pkg_set src.url "https://github.com/JohnnyMorganz/StyLua/archive/refs/tags/v0.13.1.tar.gz"
pkg_set src.sha "21158028569158ec7c1ad71352f3cb1906a005eb797508aa2b0b4a861162cf72"
pkg_set license "MPL-2.0"
pkg_set bsystem "cargo"

build() {
    cargow install --all-features
}
