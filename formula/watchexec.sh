package set summary "Execute commands when watched files change"
package set git.url "https://github.com/watchexec/watchexec.git"
package set src.url "https://github.com/watchexec/watchexec/archive/cli-v1.18.8.tar.gz"
package set src.sum "1e450a8e13ccbddee86b9226798a513ea960c396a73d10964d224270f4843d4b"
package set license "Apache-2.0"
package set bsystem "cargo"
package set binsrcd "yes"

build() {
    cargow install --locked --path cli &&
    run install_mans doc/watchexec.1
}
