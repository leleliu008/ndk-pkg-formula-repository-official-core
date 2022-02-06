package set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
package set webpage "https://luau-lang.org"
package set git.url "https://github.com/Roblox/luau.git"
package set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.513.tar.gz"
package set src.sum "c7b44a9ab8bf1477e4537016fceb6888dd3e6452c71f10c48f96e824a1c49b7f"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
