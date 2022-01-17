package set summary "Opinionated Lua code formatter"
package set git.url "https://github.com/JohnnyMorganz/StyLua.git"
package set src.url "https://github.com/JohnnyMorganz/StyLua/archive/refs/tags/v0.11.3.tar.gz"
package set src.sum "106c922dda830b3d599d6e9d429aa62b86e1884207db521e758c86427a578c67"
package set license "MPL-2.0"
package set bsystem "cargo"

build() {
    cargow install --all-features
}
