pkg_set summary "A fast, small, safe, gradually typed embeddable scripting language derived from Lua"
pkg_set webpage "https://luau-lang.org"
pkg_set git.url "https://github.com/Roblox/luau.git"
pkg_set src.url "https://github.com/Roblox/luau/archive/refs/tags/0.530.tar.gz"
pkg_set src.sha "913dd66657f1c65c592e85443100bd89c5259f3df3ba86c8cd26d51296a8f42d"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DLUAU_BUILD_CLI=ON \
        -DLUAU_BUILD_TESTS=OFF &&
    install_bins luau luau-analyze &&
    install_libs libLuau.Analysis.a libLuau.Ast.a libLuau.Compiler.a libLuau.VM.a 
}
