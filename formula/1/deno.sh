package set summary "Secure runtime for JavaScript and TypeScript"
package set webpage "https://deno.land"
package set src.git "https://github.com/denoland/deno.git"
package set version "1.11.1"
package set src.url "https://github.com/denoland/deno/releases/download/v${PACKAGE_VERSION}/deno_src.tar.gz"
package set src.sum "cfe4fa8e97bb3ea5f4df2f08516e8f9bc1e5ba25e31c8790d625a1e7c633bed3"
package set license "MIT"
package set bsystem "cargo"

build() {
    export CFLAGS="$CFLAGS $CPPFLAGS $LDFLAGS"
    export CXXFLAGS="$CFLAGS"
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --locked --path "$SOURCE_DIR/cli" --root="$ABI_INSTALL_DIR"
}
