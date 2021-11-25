package set summary "Toolkit for image loading and pixel buffer manipulation"
package set webpage "https://gtk.org"
package set src.url "https://download.gnome.org/sources/gdk-pixbuf/2.42/gdk-pixbuf-2.42.6.tar.xz"
package set src.sum "c4a6b75b7ed8f58ca48da830b9fa00ed96d668d3ab4b1f723dcf902f78bde77f"
package set license "LGPL-2.1-or-later"
package set dep.pkg "glib libjpeg-turbo libpng libtiff"
package set dep.cmd "pkg-config"
package set bsystem "meson"

build() {
    mesonw \
        -Drelocatable=false \
        -Dnative_windows_loaders=false \
        -Dinstalled_tests=false \
        -Dgtk_doc=false \
        -Dman=false \
        -Dpng=true \
        -Djpeg=true \
        -Dtiff=true \
        -Dintrospection=disabled
}
