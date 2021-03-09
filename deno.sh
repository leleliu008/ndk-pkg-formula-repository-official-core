summary "Secure runtime for JavaScript and TypeScript"
webpage "https://deno.land"
src_git "https://github.com/denoland/deno.git"
version "1.8.0"
src_url "https://github.com/denoland/deno/releases/download/v$(version)/deno_src.tar.gz"
src_sum "5cd695ef8f16e947d5155e53b159a147e538405310f892028fe5e2d21eddc3f9"
license "MIT"
bsystem "cargo"

build() {
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR"
}
