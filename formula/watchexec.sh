package set summary "Execute commands when watched files change"
package set git.url "https://github.com/watchexec/watchexec.git"
package set src.url "https://github.com/watchexec/watchexec/archive/cli-v1.18.9.tar.gz"
package set src.sum "7f6d8339635870ff9e07648b1512c1e8cf7d4dcd52a3ee98f78ceab13594c3a2"
package set license "Apache-2.0"
package set bsystem "cargo"
package set binsrcd "yes"

build() {
    cargow install --locked --path cli &&
    run install_mans doc/watchexec.1
}
