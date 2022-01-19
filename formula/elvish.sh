package set summary "Friendly and expressive shell"
package set webpage "https://elv.sh/"
package set git.url "https://github.com/elves/elvish.git"
package set src.url "https://github.com/elves/elvish/archive/v0.17.0.tar.gz"
package set src.sum "0e255849723129d8c4dc24f67656e651b4e4b7566bc16009109ba76099681fa1"
package set license "BSD-2-Clause"
package set bsystem "go"

build() {
    gow ./cmd/elvish
}
