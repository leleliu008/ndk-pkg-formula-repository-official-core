pkg_set summary "Coreutils progress viewer"
pkg_set git.url "https://github.com/Xfennec/progress.git"
pkg_set src.url "https://github.com/Xfennec/progress/archive/v0.16.tar.gz"
pkg_set src.sha "59944ee35f8ae6d62ed4f9b643eee2ae6d03825da288d9779dc43de41164c834"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.cmd "pkg-config"
pkg_set dep.pkg "ncurses libwordexp"
pkg_set bsystem "make"
pkg_set binbstd 'yes'

build() {
    makew clean &&
    makew CC="$CC" CFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS $libwordexp_LIBRARY_DIR/libwordexp.a'" UNAME=Linux &&
    makew install PREFIX="$TARGET_INSTALL_DIR"
}
