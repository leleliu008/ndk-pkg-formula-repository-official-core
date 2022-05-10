pkg_set summary "Glib-like multi-platform C library"
pkg_set webpage "https://tboox.org/"
pkg_set git.url "https://github.com/tboox/tbox.git"
pkg_set src.url "https://github.com/tboox/tbox/archive/v1.6.8.tar.gz"
pkg_set src.sha "f437a31caa769a980e2e38ecc5bf37f1e572325d5d60fd242b9d6d49174b66fd"
pkg_set license "Apache-2.0"
pkg_set bsystem "xmake"

build() {
    xmakew --charset=y --small=y --xml=y --demo=n
}
