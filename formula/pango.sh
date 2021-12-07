package set summary "Framework for layout and rendering of i18n text"
package set webpage "https://www.pango.org"
package set src.git "https://gitlab.gnome.org/GNOME/pango.git"
package set src.url "https://download.gnome.org/sources/pango/1.50/pango-1.50.0.tar.xz"
package set src.sum "dba8b62ddf86e10f73f93c3d2256b73238b2bcaf87037ca229b40bdc040eb3f3"
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
