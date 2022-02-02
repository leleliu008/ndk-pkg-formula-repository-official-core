package set summary "Core application library for C"
package set webpage "https://developer.gnome.org/glib"
package set git.url "https://github.com/GNOME/glib.git"
package set src.url "https://download.gnome.org/sources/glib/2.70/glib-2.70.3.tar.xz"
package set src.sum "233fa4841c1e19e396db7607d58f6b75ba3313c50bf0fce07b2e3532d5eb7d46"
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
