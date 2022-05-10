pkg_set summary "Compiler for the GObject type system"
pkg_set webpage "https://wiki.gnome.org/Projects/Vala"
pkg_set git.url "https://github.com/GNOME/vala.git"
pkg_set src.url "https://download.gnome.org/sources/vala/0.56/vala-0.56.1.tar.xz"
pkg_set src.sha "c518b81dfdda82d1cdf586b3f9b2323162cb96bd3cb5a2c03650cea025d91fb9"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.pkg "glib graphviz"
pkg_set dep.cmd "pkg-config flex bison"
pkg_set bsystem "configure"

build() {
    configure --with-cgraph
}
