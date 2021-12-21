package set summary "Framework for layout and rendering of i18n text"
package set webpage "https://www.pango.org"
package set src.git "https://gitlab.gnome.org/GNOME/pango.git"
package set src.url "https://download.gnome.org/sources/pango/1.50/pango-1.50.2.tar.xz"
package set src.sum "5de9b7ebeaac20b0ea3a194d69b5381bc5589570da596746acb699a3eb62b3de"
package set license "LGPL-2.0-or-later"
package set dep.cmd "pkg-config glib-mkenums"
package set dep.pkg "cairo fribidi harfbuzz"
package set bsystem "meson"

build() {
    mesonw \
        -Dgtk_doc=false \
        -Dinstall-tests=false \
        -Dcairo=enabled \
        -Dfreetype=enabled \
        -Dfontconfig=enabled
}
