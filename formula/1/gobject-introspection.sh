pkg_set summary "Generate introspection data for GObject libraries"
pkg_set webpage "https://gi.readthedocs.io"
pkg_set git.url "https://gitlab.gnome.org/GNOME/gobject-introspection"
pkg_set src.url "https://download.gnome.org/sources/gobject-introspection/1.66/gobject-introspection-1.66.1.tar.xz"
pkg_set src.sha "dd44a55ee5f426ea22b6b89624708f9e8d53f5cc94e5485c15c87cb30e06161d"
pkg_set license "MIT"
pkg_set bsystem "meson"
pkg_set dep.cmd "pkg-config"
pkg_set dep.pkg "glib python"

build() {
    mesonw -Dgi_cross_use_prebuilt_gi=true
}
