package set summary "Glib-like multi-platform C library"
package set webpage "https://tboox.org/"
package set git.url "https://github.com/tboox/tbox.git"
package set src.url "https://github.com/tboox/tbox/archive/v1.6.7.tar.gz"
package set src.sum "7bedfc46036f0bb99d4d81b5a344fa8c24ada2372029b6cbe0c2c475469b2b70"
package set license "Apache-2.0"
package set bsystem "xmake"

build() {
    xmakew --charset=y --small=y --xml=y --demo=n
}
