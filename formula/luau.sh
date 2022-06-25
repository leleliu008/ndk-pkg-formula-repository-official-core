pkg_set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
pkg_set webpage "https://luau-lang.org"
pkg_set git.url "https://github.com/Roblox/luau.git"
pkg_set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.533.tar.gz"
pkg_set src.sha "94ba9e9d89d3ba0edb369a4f0647c45c7f1e589e5f2bf5de60469175236f1d3e"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
