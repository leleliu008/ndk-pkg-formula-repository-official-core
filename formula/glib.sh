package set summary "Core application library for C"
package set webpage "https://developer.gnome.org/glib"
package set git.url "https://github.com/GNOME/glib.git"
package set src.url "https://download.gnome.org/sources/glib/2.72/glib-2.72.0.tar.xz"
package set src.sum "d7bef0d4c4e7a62e08efb8e5f252a01357007b9588a87ff2b463a3857011f79d"
package set license "LGPL-2.1-or-later"
package set dep.pkg "gettext libffi pcre"
package set bsystem "meson"

build() {
    mesonw \
        -Dnls=disabled \
        -Dman=false \
        -Dgtk_doc=false \
        -Diconv=external \
        -Ddtrace=false \
        -Dglib_debug=disabled \
        -Dglib_assert=false \
        -Dtests=false \
        -Dinstalled_tests=false \
        -Dbsymbolic_functions=false
}
