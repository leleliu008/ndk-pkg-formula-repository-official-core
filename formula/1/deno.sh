package set summary "Secure runtime for JavaScript and TypeScript"
package set webpage "https://deno.land"
package set git.url "https://github.com/denoland/deno.git"
package set version "1.16.3"
package set src.url "https://github.com/denoland/deno/releases/download/v${PACKAGE_VERSION}/deno_src.tar.gz"
package set src.sum "dd3f8a2f072530aba3d67bc9cc14eb3ee48418ae263ac9dbe37612c16300bd4b"
package set license "MIT"
package set bsystem "cargo"

package set sdk.api 23

build() {
    export RUST_BACKTRACE=full
    export CFLAGS="$CFLAGS $CPPFLAGS $LDFLAGS"
    export CXXFLAGS="$CFLAGS"
    cargow install --path "$PACKAGE_BSCRIPT_DIR/cli"
}
