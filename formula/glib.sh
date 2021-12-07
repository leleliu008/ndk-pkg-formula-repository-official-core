package set summary "Core application library for C"
package set webpage "https://developer.gnome.org/glib"
package set src.url "https://download.gnome.org/sources/glib/2.70/glib-2.70.2.tar.xz"
package set src.sum "0551459c85cd3da3d58ddc9016fd28be5af503f5e1615a71ba5b512ac945806f"
package set license "LGPL-2.1-or-later"
package set dep.pkg "libiconv gettext libffi pcre zlib"
package set bsystem "meson"
#package set ldflags "-lpcre -liconv -lm -lz"

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
