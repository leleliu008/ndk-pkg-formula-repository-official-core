pkg_set summary "Library for JSON, based on GLib"
pkg_set webpage "https://wiki.gnome.org/Projects/JsonGlib"
pkg_set git.url "https://gitlab.gnome.org/GNOME/json-glib.git"
pkg_set src.url "https://download.gnome.org/sources/json-glib/1.6/json-glib-1.6.6.tar.xz"
pkg_set src.sha "96ec98be7a91f6dde33636720e3da2ff6ecbb90e76ccaa49497f31a6855a490e"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.cmd "pkg-config glib-mkenums"
pkg_set dep.pkg "glib"
pkg_set bsystem "meson"

build() {
    mesonw \
        -Dtests=false \
        -Dman=false \
        -Dgtk_doc=disabled \
        -Dintrospection=disabled
}
