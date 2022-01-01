package set summary "Compiler for the GObject type system"
package set webpage "https://wiki.gnome.org/Projects/Vala"
package set git.url "https://github.com/GNOME/vala.git"
package set src.url "https://download.gnome.org/sources/vala/0.54/vala-0.54.5.tar.xz"
package set src.sum "0028da1685dedca993792bfb5f460db5ba548c9aa44323b1899f733a89121587"
package set license "LGPL-2.1-or-later"
package set dep.pkg "glib graphviz"
package set dep.cmd "pkg-config flex bison"
package set bsystem "configure"

build() {
    configure --with-cgraph
}
