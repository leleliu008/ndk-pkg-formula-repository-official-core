package set summary "Opinionated Lua code formatter"
package set git.url "https://github.com/JohnnyMorganz/StyLua.git"
package set src.url "https://github.com/JohnnyMorganz/StyLua/archive/refs/tags/v0.12.5.tar.gz"
package set src.sum "7475830178297c56a7048eaad8fe9ba34f9e62fa7e84929793f6d6e73896c676"
package set license "MPL-2.0"
package set bsystem "cargo"

build() {
    cargow install --all-features
}
