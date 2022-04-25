pkg_set summary "Secure runtime for JavaScript and TypeScript"
pkg_set webpage "https://deno.land"
pkg_set git.url "https://github.com/denoland/deno.git"
pkg_set version "1.16.3"
pkg_set src.url "https://github.com/denoland/deno/releases/download/v${PACKAGE_VERSION}/deno_src.tar.gz"
pkg_set src.sha "dd3f8a2f072530aba3d67bc9cc14eb3ee48418ae263ac9dbe37612c16300bd4b"
pkg_set license "MIT"
pkg_set bsystem "cargo"

pkg_set sdk.api 23

build() {
    export RUST_BACKTRACE=full
    export CFLAGS="$CFLAGS $CPPFLAGS $LDFLAGS"
    export CXXFLAGS="$CFLAGS"
    cargow install --path "$PACKAGE_BSCRIPT_DIR/cli"
}
