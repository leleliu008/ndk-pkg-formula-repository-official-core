package set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
package set webpage "https://luau-lang.org"
package set git.url "https://github.com/Roblox/luau.git"
package set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.512.tar.gz"
package set src.sum "9d0c6813d77c28de8a6de06991dfc3bf90d32bc0ea7157fa52afe066ace9447b"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
