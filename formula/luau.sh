package set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
package set webpage "https://luau-lang.org"
package set src.git "https://github.com/Roblox/luau.git"
package set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.506.tar.gz"
package set src.sum "34cece5e9c2abdc56eff40cba72ca0ca447d321913d4fd9fb4294c2051ae7c97"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
