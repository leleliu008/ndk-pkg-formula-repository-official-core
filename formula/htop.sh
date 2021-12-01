package set summary "Improved top (interactive process viewer)"
package set webpage "https://htop.dev"
package set src.git "https://github.com/htop-dev/htop.git"
package set src.url "https://github.com/htop-dev/htop/archive/3.1.2.tar.gz"
package set src.sum "fe9559637c8f21f5fd531a4c072048a404173806acbdad1359c6b82fd87aa001"
package set license "GPL-2.0-or-later"
package set dep.pkg "ncurses"
package set bsystem "autogen"

build() {
    configure --enable-unicode LIBS=$ncurses_LIBRARY_DIR/libncursesw.a
}
