package set summary "Compiler for the GObject type system"
package set webpage "https://wiki.gnome.org/Projects/Vala"
package set git.url "https://github.com/GNOME/vala.git"
package set src.url "https://download.gnome.org/sources/vala/0.56/vala-0.56.0.tar.xz"
package set src.sum "d92bd13c5630905eeb6a983dcb702204da9731460c2a6e4e39f867996f371040"
package set license "LGPL-2.1-or-later"
package set dep.pkg "glib graphviz"
package set dep.cmd "pkg-config flex bison"
package set bsystem "configure"

build() {
    configure --with-cgraph
}
