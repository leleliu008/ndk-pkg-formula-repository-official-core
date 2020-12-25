summary "Framework for layout and rendering of i18n text"
webpage "https://www.pango.org"
src_url "https://download.gnome.org/sources/pango/1.48/pango-1.48.0.tar.xz"
src_sum "391f26f3341c2d7053e0fb26a956bd42360dadd825efe7088b1e9340a65e74e6"
license "LGPL-2.0-or-later"
require "pkg-config meson"
depends "fontconfig fribidi glib harfbuzz"

build() {
    export LDFLAGS="$LDFLAGS -lffi -lbz2 -lz -lbrotlicommon -lbrotlidec -lfontconfig -lpng16 -luuid -lgmodule-2.0 -lgio-2.0"
    meson
}
