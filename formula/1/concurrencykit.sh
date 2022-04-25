pkg_set summary "Aid design and implementation of concurrent systems"
pkg_set webpage "http://concurrencykit.org/"
pkg_set git.url "https://github.com/concurrencykit/ck.git"
pkg_set src.url "https://github.com/concurrencykit/ck/archive/0.7.0.tar.gz"
pkg_set src.sha "e730cb448fb0ecf9d19bf4c7efe9efc3c04dd9127311d87d8f91484742b0da24"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "configure"

prepare() {
    sed_in_place '1a set -x' configure
}
