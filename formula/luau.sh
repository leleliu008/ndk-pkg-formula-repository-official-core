pkg_set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
pkg_set webpage "https://luau-lang.org"
pkg_set git.url "https://github.com/Roblox/luau.git"
pkg_set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.526.tar.gz"
pkg_set src.sha "64b39fd654db44f66eed8be235d33ee94d624d5d847bba8fa69a2003a6977712"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
