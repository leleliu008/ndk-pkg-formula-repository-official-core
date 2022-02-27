package set summary "Library for JSON, based on GLib"
package set webpage "https://wiki.gnome.org/Projects/JsonGlib"
package set git.url "https://gitlab.gnome.org/GNOME/json-glib.git"
package set src.url "https://download.gnome.org/sources/json-glib/1.6/json-glib-1.6.6.tar.xz"
package set src.sum "96ec98be7a91f6dde33636720e3da2ff6ecbb90e76ccaa49497f31a6855a490e"
package set license "LGPL-2.1-or-later"
package set dep.cmd "pkg-config glib-mkenums"
package set dep.pkg "glib"
package set bsystem "meson"

build() {
    mesonw \
        -Dtests=false \
        -Dman=false \
        -Dgtk_doc=disabled \
        -Dintrospection=disabled
}
