pkg_set summary "Compiler for the GObject type system"
pkg_set webpage "https://wiki.gnome.org/Projects/Vala"
pkg_set git.url "https://github.com/GNOME/vala.git"
pkg_set src.url "https://download.gnome.org/sources/vala/0.56/vala-0.56.0.tar.xz"
pkg_set src.sha "d92bd13c5630905eeb6a983dcb702204da9731460c2a6e4e39f867996f371040"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.pkg "glib graphviz"
pkg_set dep.cmd "pkg-config flex bison"
pkg_set bsystem "configure"

build() {
    configure --with-cgraph
}
