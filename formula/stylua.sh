package set summary "Opinionated Lua code formatter"
package set git.url "https://github.com/JohnnyMorganz/StyLua.git"
package set src.url "https://github.com/JohnnyMorganz/StyLua/archive/refs/tags/v0.13.0.tar.gz"
package set src.sum "ad74d1f47b0337810459dab9b49694bd5bd6c8c7381a35dcab7866752652988b"
package set license "MPL-2.0"
package set bsystem "cargo"

build() {
    cargow install --all-features
}
