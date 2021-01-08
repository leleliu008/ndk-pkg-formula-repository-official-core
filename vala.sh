summary "Compiler for the GObject type system"
webpage "https://wiki.gnome.org/Projects/Vala"
src_url "https://download.gnome.org/sources/vala/0.50/vala-0.50.2.tar.xz"
src_sum "2c0d5dc6d65d070f724063075424c403765ab7935c9e6fbcb84981b94d07ceda"
license "LGPL-2.1-or-later"
require "pkg-config"
depends "glib graphviz"

build() {
    LDFLAGS="$LDFLAGS -lpcre -lffi -lxdot -lpathplan -lglob -lz -lm"
    configure --with-cgraph
}
