pkg_set summary "Fast static site generator in a single binary with everything built-in"
pkg_set webpage "https://www.getzola.org"
pkg_set git.url "https://github.com/getzola/zola.git"
pkg_set src.url "https://github.com/getzola/zola/archive/v0.15.3.tar.gz"
pkg_set src.sha "89a590549249e60a01f1a1f66ee23fedc711afd4e9a669ee1328e5c99ea958c8"
pkg_set license "MIT"
pkg_set bsystem "cargo"

prepare() {
    # https://docs.rs/cc/1.0.72/cc/struct.Build.html#method.cpp_link_stdlib
    printf '%s\n' 'INPUT(-lc++_static)' > "$TIMESTAMP_UNIX/libstdc++.a"
}
