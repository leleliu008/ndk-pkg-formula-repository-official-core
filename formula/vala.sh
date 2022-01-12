package set summary "Compiler for the GObject type system"
package set webpage "https://wiki.gnome.org/Projects/Vala"
package set git.url "https://github.com/GNOME/vala.git"
package set src.url "https://download.gnome.org/sources/vala/0.54/vala-0.54.6.tar.xz"
package set src.sum "49d60d96a3fdf6c4287397442bc6d6d95bf40aa7df678ee49128c4b11ba6e469"
package set license "LGPL-2.1-or-later"
package set dep.pkg "glib graphviz"
package set dep.cmd "pkg-config flex bison"
package set bsystem "configure"

build() {
    configure --with-cgraph
}
