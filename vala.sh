summary  "Compiler for the GObject type system"
homepage "https://wiki.gnome.org/Projects/Vala"
url      "https://download.gnome.org/sources/vala/0.50/vala-0.50.2.tar.xz"
sha256   "2c0d5dc6d65d070f724063075424c403765ab7935c9e6fbcb84981b94d07ceda"
license  "LGPL-2.1-or-later"
requirements "pkg-config"
dependencies "glib graphviz"

build() {
    LDFLAGS="$LDFLAGS -lffi -lxdot -lpathplan -lglob -lz -lm"
    configure --with-cgraph
}
