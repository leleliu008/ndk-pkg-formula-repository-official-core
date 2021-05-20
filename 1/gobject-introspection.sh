package set summary "Generate introspection data for GObject libraries"
package set webpage "https://gi.readthedocs.io"
package set src.git "https://gitlab.gnome.org/GNOME/gobject-introspection"
package set src.url "https://download.gnome.org/sources/gobject-introspection/1.66/gobject-introspection-1.66.1.tar.xz"
package set src.sum "dd44a55ee5f426ea22b6b89624708f9e8d53f5cc94e5485c15c87cb30e06161d"
package set license "MIT"
package set bsystem "meson"
package set dep.cmd "pkg-config"
package set dep.pkg "glib python"

build() {
    mesonw -Dgi_cross_use_prebuilt_gi=true
}
