package set summary "Opinionated Lua code formatter"
package set git.url "https://github.com/JohnnyMorganz/StyLua.git"
package set src.url "https://github.com/JohnnyMorganz/StyLua/archive/refs/tags/v0.12.4.tar.gz"
package set src.sum "ce6b4a6767b17f8d609e8c9d666c5f6f5c2863edd0638e70392bfe55f99b4fd0"
package set license "MPL-2.0"
package set bsystem "cargo"

build() {
    cargow install --all-features
}
