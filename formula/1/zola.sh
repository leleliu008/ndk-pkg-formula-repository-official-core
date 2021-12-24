package set summary "Fast static site generator in a single binary with everything built-in"
package set webpage "https://www.getzola.org"
package set src.git "https://github.com/getzola/zola.git"
package set src.url "https://github.com/getzola/zola/archive/v0.15.2.tar.gz"
package set src.sum "9f6b1527e728cef3536e42a18fbc06647b388fb34fc07cc7aca82e44f4fa3447"
package set license "MIT"
package set bsystem "cargo"

prepare() {
    # https://docs.rs/cc/1.0.72/cc/struct.Build.html#method.cpp_link_stdlib
    printf '%s\n' 'INPUT(-lc++_static)' > "$TIMESTAMP_UNIX/libstdc++.a"
}
