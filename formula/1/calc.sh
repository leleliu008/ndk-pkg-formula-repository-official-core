pkg_set summary "Arbitrary precision calculator"
pkg_set webpage "http://www.isthe.com/chongo/tech/comp/calc/"
pkg_set git.url "https://github.com/lcn2/calc.git"
pkg_set src.url "https://downloads.sourceforge.net/project/calc/calc/2.14.0.14/calc-2.14.0.14.tar.bz2"
pkg_set src.sha "f7727835a103d9712c571958e924e9c254bd148f08eb4348019bc34f8e71c55d"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.pkg "readline"
pkg_set bsystem "make"
pkg_set binbstd "yes"

build() {
    export BUILD_NJOBS=1
    makew clean &&
    makew --debug install EXTRA_CFLAGS="'$CFLAGS $CPPFLAGS'" EXTRA_LDFLAGS="'$LDFLAGS'" USE_READLINE=-DUSE_READLINE READLINE_EXTRAS="'-lhistory -lncurses'"
}
