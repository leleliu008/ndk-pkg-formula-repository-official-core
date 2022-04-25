pkg_set summary "Glib-like multi-platform C library"
pkg_set webpage "https://tboox.org/"
pkg_set git.url "https://github.com/tboox/tbox.git"
pkg_set src.url "https://github.com/tboox/tbox/archive/v1.6.7.tar.gz"
pkg_set src.sha "7bedfc46036f0bb99d4d81b5a344fa8c24ada2372029b6cbe0c2c475469b2b70"
pkg_set license "Apache-2.0"
pkg_set bsystem "xmake"

build() {
    xmakew --charset=y --small=y --xml=y --demo=n
}
