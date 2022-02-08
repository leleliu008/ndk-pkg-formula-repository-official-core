package set summary "Execute commands when watched files change"
package set git.url "https://github.com/watchexec/watchexec.git"
package set src.url "https://github.com/watchexec/watchexec/archive/cli-v1.18.5.tar.gz"
package set src.sum "ae4b2ab209e342c981ab186e3581b95f7c43856aef037196747b6e4c33f8f3e1"
package set license "Apache-2.0"
package set bsystem "cargo"
package set binsrcd "yes"

build() {
    cargow install --locked --path cli &&
    run install_mans doc/watchexec.1
}
