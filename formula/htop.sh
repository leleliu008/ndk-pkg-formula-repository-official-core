package set summary "Improved top (interactive process viewer)"
package set webpage "https://htop.dev"
package set src.git "https://github.com/htop-dev/htop.git"
package set src.url "https://github.com/htop-dev/htop/archive/3.1.1.tar.gz"
package set src.sum "b52280ad05a535ec632fbcd47e8e2c40a9376a9ddbd7caa00b38b9d6bb87ced6"
package set license "GPL-2.0-or-later"
package set dep.pkg "ncurses"
package set bsystem "autogen"

build() {
    configure --enable-unicode LIBS=$ncurses_LIBRARY_DIR/libncursesw.a
}
