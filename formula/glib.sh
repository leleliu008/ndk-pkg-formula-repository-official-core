pkg_set summary "Core application library for C"
pkg_set webpage "https://developer.gnome.org/glib"
pkg_set git.url "https://github.com/GNOME/glib.git"
pkg_set src.url "https://download.gnome.org/sources/glib/2.72/glib-2.72.2.tar.xz"
pkg_set src.sha "78d599a133dba7fe2036dfa8db8fb6131ab9642783fc9578b07a20995252d2de"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.pkg "gettext libffi pcre"
pkg_set bsystem "meson"

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
