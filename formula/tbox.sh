pkg_set summary "Glib-like multi-platform C library"
pkg_set webpage "https://tboox.org/"
pkg_set git.url "https://github.com/tboox/tbox.git"
pkg_set src.url "https://github.com/tboox/tbox/archive/v1.6.9.tar.gz"
pkg_set src.sha "31db6cc51af7db76ad5b5da88356982b1e0f1e624c466c749646dd203b68adae"
pkg_set license "Apache-2.0"
pkg_set bsystem "xmake"

build() {
    xmakew --charset=y --small=y --xml=y --demo=n
}
