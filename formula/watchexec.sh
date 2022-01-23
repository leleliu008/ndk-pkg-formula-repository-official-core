package set summary "Execute commands when watched files change"
package set git.url "https://github.com/watchexec/watchexec.git"
package set src.url "https://github.com/watchexec/watchexec/archive/cli-v1.17.1.tar.gz"
package set src.sum "3bc82174729628010d29c85f2d2c61cc45cef5cc729f13153b1422c8f647d33f"
package set license "Apache-2.0"
package set bsystem "cargo"
package set binsrcd "yes"

build() {
    cargow install --path cli &&
    run install_mans doc/watchexec.1
}
