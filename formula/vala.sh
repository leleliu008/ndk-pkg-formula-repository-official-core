package set summary "Compiler for the GObject type system"
package set webpage "https://wiki.gnome.org/Projects/Vala"
package set src.url "https://download.gnome.org/sources/vala/0.54/vala-0.54.2.tar.xz"
package set src.sum "884de745317d4d56e4e8cede993dc8f04d50cfca36cf60d2f2f278c30c2b1311"
package set license "LGPL-2.1-or-later"
package set dep.pkg "glib graphviz"
package set dep.cmd "pkg-config"
package set bsystem "configure"
package set ldflags "-lpcre -lexpat -lffi -lxdot -lpathplan -lglob -lz -lm"

build() {
    configure --with-cgraph
}
