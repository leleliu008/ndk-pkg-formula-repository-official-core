pkg_set summary "Toolkit for image loading and pixel buffer manipulation"
pkg_set webpage "https://gtk.org"
pkg_set src.url "https://download.gnome.org/sources/gdk-pixbuf/2.42/gdk-pixbuf-2.42.8.tar.xz"
pkg_set src.sha "84acea3acb2411b29134b32015a5b1aaa62844b19c4b1ef8b8971c6b0759f4c6"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.pkg "glib libjpeg-turbo libpng libtiff"
pkg_set dep.cmd "pkg-config glib-compile-resources glib-mkenums"
pkg_set bsystem "meson"

build() {
    mesonw \
        -Drelocatable=false \
        -Dnative_windows_loaders=false \
        -Dinstalled_tests=false \
        -Dgtk_doc=false \
        -Dman=false \
        -Dpng=enabled \
        -Djpeg=enabled \
        -Dtiff=enabled \
        -Dintrospection=disabled
}
