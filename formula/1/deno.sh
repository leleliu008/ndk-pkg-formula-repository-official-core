package set summary "Secure runtime for JavaScript and TypeScript"
package set webpage "https://deno.land"
package set src.git "https://github.com/denoland/deno.git"
package set version "1.8.0"
package set src.url "https://github.com/denoland/deno/releases/download/v${PACKAGE_VERSION}/deno_src.tar.gz"
package set src.sum "5cd695ef8f16e947d5155e53b159a147e538405310f892028fe5e2d21eddc3f9"
package set license "MIT"
package set bsystem "cargo"

build() {
    export CFLAGS="$CFLAGS $CPPFLAGS $LDFLAGS"
    export CXXFLAGS="$CFLAGS"
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --locked --path "$SOURCE_DIR/cli" --root="$ABI_INSTALL_DIR"
}
