package set summary "Opinionated Lua code formatter"
package set git.url "https://github.com/JohnnyMorganz/StyLua.git"
package set src.url "https://github.com/JohnnyMorganz/StyLua/archive/refs/tags/v0.13.1.tar.gz"
package set src.sum "21158028569158ec7c1ad71352f3cb1906a005eb797508aa2b0b4a861162cf72"
package set license "MPL-2.0"
package set bsystem "cargo"

build() {
    cargow install --all-features
}
