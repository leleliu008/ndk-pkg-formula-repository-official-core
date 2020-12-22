summary  "Library for JSON, based on GLib"
homepage "https://wiki.gnome.org/Projects/JsonGlib"
url      "https://download.gnome.org/sources/json-glib/1.6/json-glib-1.6.0.tar.xz"
sha256   "0d7c67602c4161ea7070fab6c5823afd9bd7f7bc955f652a50d3753b08494e73"
license  "LGPL-2.1-or-later"
requirements "meson ninja pkg-config"
dependencies "glib"

build() {
    export LDFLAGS="$LDFLAGS -lgmodule-2.0 -lffi -lz"
    meson \
        -Dtests=false \
        -Dman=false \
        -Dgtk_doc=disabled \
        -Dintrospection=disabled
}
