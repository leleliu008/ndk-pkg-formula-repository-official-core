package set summary "Compiler for the GObject type system"
package set webpage "https://wiki.gnome.org/Projects/Vala"
package set src.url "https://download.gnome.org/sources/vala/0.54/vala-0.54.3.tar.xz"
package set src.sum "ed1d5fe4cbc0cd2845d0de4f1ffefb15afb06892d230c7cca695781672e8fb60"
package set license "LGPL-2.1-or-later"
package set dep.pkg "glib graphviz"
package set dep.cmd "pkg-config flex bison"
package set bsystem "configure"
#package set ldflags "-lpcre -lexpat -lffi -lxdot -lpathplan -lglob -lz -lm"

build() {
    configure --with-cgraph
}
