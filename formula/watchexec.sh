package set summary "Execute commands when watched files change"
package set git.url "https://github.com/watchexec/watchexec.git"
package set src.url "https://github.com/watchexec/watchexec/archive/cli-v1.18.6.tar.gz"
package set src.sum "d5cfd45ba05ac380e8ff7c3122d38b408a1cdb550c71036739f8c03a51117e84"
package set license "Apache-2.0"
package set bsystem "cargo"
package set binsrcd "yes"

build() {
    cargow install --locked --path cli &&
    run install_mans doc/watchexec.1
}
