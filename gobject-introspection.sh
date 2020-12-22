summary  "Generate introspection data for GObject libraries"
homepage "https://gi.readthedocs.io"
repo     "https://gitlab.gnome.org/GNOME/gobject-introspection"
url      "https://download.gnome.org/sources/gobject-introspection/1.66/gobject-introspection-1.66.1.tar.xz"
sha256   "dd44a55ee5f426ea22b6b89624708f9e8d53f5cc94e5485c15c87cb30e06161d"
license  "MIT"
requirements "meson ninja pkg-config"
dependencies "glib python"

build() {
    meson -Dgi_cross_use_prebuilt_gi=true
}
