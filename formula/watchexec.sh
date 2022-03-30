package set summary "Execute commands when watched files change"
package set git.url "https://github.com/watchexec/watchexec.git"
package set src.url "https://github.com/watchexec/watchexec/archive/cli-v1.18.11.tar.gz"
package set src.sum "bdd5af45ab7e5981eed25ac09767388aa1fbf711a9d286bcb99884464980af5b"
package set license "Apache-2.0"
package set bsystem "cargo"

build() {
    cargow install --locked --path cli &&
    run install_mans doc/watchexec.1
}
