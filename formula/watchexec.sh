package set summary "Execute commands when watched files change"
package set git.url "https://github.com/watchexec/watchexec.git"
package set src.url "https://github.com/watchexec/watchexec/archive/cli-v1.18.7.tar.gz"
package set src.sum "d187365c40e1389a7e1c492e55c73c560982b473d60cade0a2c5c8ac7b59a4e1"
package set license "Apache-2.0"
package set bsystem "cargo"
package set binsrcd "yes"

build() {
    cargow install --locked --path cli &&
    run install_mans doc/watchexec.1
}
