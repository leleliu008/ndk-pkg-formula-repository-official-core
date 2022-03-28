package set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
package set webpage "https://luau-lang.org"
package set git.url "https://github.com/Roblox/luau.git"
package set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.520.tar.gz"
package set src.sum "da749bbdd639fedcd3d352b3b684113354312bf7c2b8019e51891739134bb526"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
