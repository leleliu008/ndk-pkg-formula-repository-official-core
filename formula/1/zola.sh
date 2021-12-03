package set summary "Fast static site generator in a single binary with everything built-in"
package set webpage "https://www.getzola.org"
package set src.git "https://github.com/getzola/zola.git"
package set src.url "https://github.com/getzola/zola/archive/v0.14.1.tar.gz"
package set src.sum "28e50071009a1430c5f8df94e2585d095f85f906f04101fe35ee9ed53c353cc4"
package set license "MIT"
package set bsystem "cargo"

prepare() {
    export CARGO_HTTP_MULTIPLEXING=false
    #export RUSTFLAGS="-lc++_static"
}