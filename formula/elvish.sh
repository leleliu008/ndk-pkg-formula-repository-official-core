pkg_set summary "Friendly and expressive shell"
pkg_set webpage "https://elv.sh/"
pkg_set git.url "https://github.com/elves/elvish.git"
pkg_set src.url "https://github.com/elves/elvish/archive/v0.18.0.tar.gz"
pkg_set src.sha "f4635db90af2241bfd37e17ac1a72567b92d18a396598da2099a908b3d88c590"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "go"

build() {
    gow ./cmd/elvish
}
