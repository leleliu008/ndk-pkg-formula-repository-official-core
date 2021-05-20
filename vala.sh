package set summary "Compiler for the GObject type system"
package set webpage "https://wiki.gnome.org/Projects/Vala"
package set src.url "https://download.gnome.org/sources/vala/0.50/vala-0.50.2.tar.xz"
package set src.sum "2c0d5dc6d65d070f724063075424c403765ab7935c9e6fbcb84981b94d07ceda"
package set license "LGPL-2.1-or-later"
package set bsystem "configure"
package set dep.cmd "pkg-config"
package set dep.pkg "glib graphviz"
package set ldflags "-lpcre -lexpat -lffi -lxdot -lpathplan -lglob -lz -lm"

build() {
    configure --with-cgraph
}
