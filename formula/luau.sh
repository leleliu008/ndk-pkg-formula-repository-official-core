package set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
package set webpage "https://luau-lang.org"
package set git.url "https://github.com/Roblox/luau.git"
package set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.507.tar.gz"
package set src.sum "cd9220246f2d5512d80e17f9899b6a890d239f21c863885bac673d615e63f85f"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
