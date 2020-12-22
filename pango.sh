summary  "Framework for layout and rendering of i18n text"
homepage "https://www.pango.org"
url      "https://download.gnome.org/sources/pango/1.48/pango-1.48.0.tar.xz"
sha256   "391f26f3341c2d7053e0fb26a956bd42360dadd825efe7088b1e9340a65e74e6"
license  "LGPL-2.0-or-later"
requirements "pkg-config meson"
dependencies "fontconfig fribidi glib harfbuzz"

build() {
    export LDFLAGS="$LDFLAGS -lffi -lbz2 -lz -lbrotlicommon -lbrotlidec -lfontconfig -lpng16 -luuid -lgmodule-2.0 -lgio-2.0"
    meson
}
