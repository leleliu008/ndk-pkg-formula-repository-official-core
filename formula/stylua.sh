package set summary "Opinionated Lua code formatter"
package set git.url "https://github.com/JohnnyMorganz/StyLua.git"
package set src.url "https://github.com/JohnnyMorganz/StyLua/archive/refs/tags/v0.12.3.tar.gz"
package set src.sum "c7c960d501535329e007ff9757067d40b0cf395c2fceac09e169f4c9ea8e67ca"
package set license "MPL-2.0"
package set bsystem "cargo"

build() {
    cargow install --all-features
}
