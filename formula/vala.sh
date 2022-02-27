package set summary "Compiler for the GObject type system"
package set webpage "https://wiki.gnome.org/Projects/Vala"
package set git.url "https://github.com/GNOME/vala.git"
package set src.url "https://download.gnome.org/sources/vala/0.54/vala-0.54.7.tar.xz"
package set src.sum "62079ca1ff02e5d17ae72aa9a5adc61ae6afdcfebb0d9f06063a36efbeaca0c7"
package set license "LGPL-2.1-or-later"
package set dep.pkg "glib graphviz"
package set dep.cmd "pkg-config flex bison"
package set bsystem "configure"

build() {
    configure --with-cgraph
}
