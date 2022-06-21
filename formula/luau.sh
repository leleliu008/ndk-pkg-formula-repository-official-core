pkg_set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
pkg_set webpage "https://luau-lang.org"
pkg_set git.url "https://github.com/Roblox/luau.git"
pkg_set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.532.tar.gz"
pkg_set src.sha "158168f3d27d63f4ebdfd04c3c8dfb6f9b65d562ce4cd6b5fc8b42ef5acfaf75"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
