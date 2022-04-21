package set summary "Coreutils progress viewer"
package set git.url "https://github.com/Xfennec/progress.git"
package set src.url "https://github.com/Xfennec/progress/archive/v0.16.tar.gz"
package set src.sum "59944ee35f8ae6d62ed4f9b643eee2ae6d03825da288d9779dc43de41164c834"
package set license "GPL-3.0-or-later"
package set dep.cmd "pkg-config"
package set dep.pkg "ncurses libwordexp"
package set bsystem "make"
package set binbstd 'yes'

build() {
    makew clean &&
    makew CC="$CC" CFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS $libwordexp_LIBRARY_DIR/libwordexp.a'" UNAME=Linux &&
    makew install PREFIX="$TARGET_INSTALL_DIR"
}
