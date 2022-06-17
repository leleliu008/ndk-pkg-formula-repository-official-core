pkg_set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
pkg_set webpage "https://luau-lang.org"
pkg_set git.url "https://github.com/Roblox/luau.git"
pkg_set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.531.tar.gz"
pkg_set src.sha "dad818dd2e0d21842139c2c3379e66a0ee5c21a22a865f028495812708885472"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
