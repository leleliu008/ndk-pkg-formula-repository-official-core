package set summary "Sampling profiler for Ruby"
package set webpage "https://rbspy.github.io/"
package set git.url "https://github.com/rbspy/rbspy.git"
package set src.url "https://github.com/rbspy/rbspy/archive/v0.11.1.tar.gz"
package set src.sum "a69503e5385cb6a31a9db7bd2e2d1b93e4b53335062c4043e80ca9bfcf6d883d"
package set license "MIT"
package set bsystem "cargo"

build() {
    cargow install --locked
}
