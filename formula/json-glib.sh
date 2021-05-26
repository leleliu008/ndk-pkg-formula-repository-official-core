package set summary "Library for JSON, based on GLib"
package set webpage "https://wiki.gnome.org/Projects/JsonGlib"
package set src.url "https://download.gnome.org/sources/json-glib/1.6/json-glib-1.6.0.tar.xz"
package set src.sum "0d7c67602c4161ea7070fab6c5823afd9bd7f7bc955f652a50d3753b08494e73"
package set license "LGPL-2.1-or-later"
package set bsystem "meson"
package set dep.cmd "pkg-config"
package set dep.pkg "glib"
package set ldflags "-lgmodule-2.0 -lffi -lpcre -lz"

build() {
    mesonw \
        -Dtests=false \
        -Dman=false \
        -Dgtk_doc=disabled \
        -Dintrospection=disabled
}
