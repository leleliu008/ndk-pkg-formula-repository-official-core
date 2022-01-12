package set summary "Aid design and implementation of concurrent systems"
package set webpage "http://concurrencykit.org/"
package set git.url "https://github.com/concurrencykit/ck.git"
package set src.url "https://github.com/concurrencykit/ck/archive/0.7.0.tar.gz"
package set src.sum "e730cb448fb0ecf9d19bf4c7efe9efc3c04dd9127311d87d8f91484742b0da24"
package set license "BSD-2-Clause"
package set bsystem "configure"

prepare() {
    sed_in_place '1a set -x' configure
}
