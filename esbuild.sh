summary "An extremely fast JavaScript bundler and minifier"
webpage "https://esbuild.github.io"
src_git "https://github.com/evanw/esbuild.git"
src_url "https://github.com/evanw/esbuild/archive/v0.8.56.tar.gz"
src_sum "45efe10eeef55349981466866960ab86ed99626b5ebd7b4b102dca9d922e5869"
license "MIT"
bsystem "go"

build_in_sourced

build() {
    run go build -v -trimpath -o esbuild ./cmd/esbuild &&
    run install_bins esbuild
}
