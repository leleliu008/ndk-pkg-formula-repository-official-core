package set summary "Opinionated Lua code formatter"
package set git.url "https://github.com/JohnnyMorganz/StyLua.git"
package set src.url "https://github.com/JohnnyMorganz/StyLua/archive/refs/tags/v0.12.1.tar.gz"
package set src.sum "f9f57d52a5665c4c878556e14b8533da053d64a55575fbc92e4445c5a064bd4f"
package set license "MPL-2.0"
package set bsystem "cargo"

build() {
    cargow install --all-features
}
