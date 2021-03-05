summary "Generate introspection data for GObject libraries"
webpage "https://gi.readthedocs.io"
src_git "https://gitlab.gnome.org/GNOME/gobject-introspection"
src_url "https://download.gnome.org/sources/gobject-introspection/1.66/gobject-introspection-1.66.1.tar.xz"
src_sum "dd44a55ee5f426ea22b6b89624708f9e8d53f5cc94e5485c15c87cb30e06161d"
license "MIT"
bsystem "meson"
require "pkg-config"
depends "glib python"

build() {
    meson -Dgi_cross_use_prebuilt_gi=true
}
