package set summary "Friendly and expressive shell"
package set webpage "https://elv.sh/"
package set git.url "https://github.com/elves/elvish.git"
package set src.url "https://github.com/elves/elvish/archive/v0.18.0.tar.gz"
package set src.sum "f4635db90af2241bfd37e17ac1a72567b92d18a396598da2099a908b3d88c590"
package set license "BSD-2-Clause"
package set bsystem "go"

build() {
    gow ./cmd/elvish
}
