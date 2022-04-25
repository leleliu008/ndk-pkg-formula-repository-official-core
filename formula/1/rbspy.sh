pkg_set summary "Sampling profiler for Ruby"
pkg_set webpage "https://rbspy.github.io/"
pkg_set git.url "https://github.com/rbspy/rbspy.git"
pkg_set src.url "https://github.com/rbspy/rbspy/archive/v0.11.1.tar.gz"
pkg_set src.sha "a69503e5385cb6a31a9db7bd2e2d1b93e4b53335062c4043e80ca9bfcf6d883d"
pkg_set license "MIT"
pkg_set bsystem "cargo"

build() {
    cargow install --locked
}
