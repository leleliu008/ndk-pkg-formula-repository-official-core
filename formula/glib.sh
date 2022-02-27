package set summary "Core application library for C"
package set webpage "https://developer.gnome.org/glib"
package set git.url "https://github.com/GNOME/glib.git"
package set src.url "https://download.gnome.org/sources/glib/2.70/glib-2.70.4.tar.xz"
package set src.sum "ab3d176f3115dcc4e5d02db795984e04e4f4b48d836252e23e8c468e9d423c33"
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
